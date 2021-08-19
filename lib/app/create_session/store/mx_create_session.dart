import 'package:estiminator/app/core/input/data_input.dart';
import 'package:estiminator/app/core/input/input.dart';
import 'package:estiminator/app/core/input/non_empty_validator.dart';
import 'package:estiminator/app/create_session/model/estimation_scale_state_model.dart';
import 'package:estiminator/app/create_session/model/estimation_scales_state_model.dart';
import 'package:estiminator/app/create_session/scales_state_model_mapper.dart';
import 'package:estiminator/app/create_session/model/task_state_model.dart';
import 'package:estiminator/app/create_session/store/s_create_session.dart';
import 'package:estiminator/domain/create_session/create_session_use_case.dart';
import 'package:estiminator/domain/create_session/get_estimation_scales_use_case.dart';
import 'package:estiminator/domain/create_session/create_session_domain_model.dart';
import 'package:estiminator/domain/credentials/user_credentials_provider.dart';
import 'package:mobx/mobx.dart';

part 'mx_create_session.g.dart';

class CreateSessionMx = _CreateSessionMx with _$CreateSessionMx;

abstract class _CreateSessionMx with Store implements CreateSessionS {
  _CreateSessionMx(this._getEstimationScalesUseCase, this._createSessionUseCase, this._userCredentialsprovider);

  final GetEstimationScalesUseCase _getEstimationScalesUseCase;
  final CreateSessionUseCase _createSessionUseCase;
  final IUserCredentialsprovider _userCredentialsprovider;

  @observable
  @override
  ObservableFuture<EstimationScalesStateModel>? estimationScalesFuture;

  @observable
  @override
  ObservableFuture<void>? createSessionFuture;

  @override
  Input<String?> sessionTitle = DataInput<String?>(validator: nonEmptyValidator);

  @override
  Input<String?> taskDescription = DataInput<String?>();

  @override
  Input<String?> taskJiraLink = DataInput<String?>();

  @override
  Input<String?> taskTitle = DataInput<String?>(validator: nonEmptyValidator);

  @observable
  @override
  ObservableList<TaskStateModel> tasks = ObservableList();

  @override
  Input<EstimationScaleStateModel?> scale = DataInput<EstimationScaleStateModel?>();

  EstimationScalesStateModel? _scalesStateModel;

  @observable
  @override
  bool createdSession = false;

  @action
  @override
  Future<void> loadScales() async {
    estimationScalesFuture = ObservableFuture(
      _getEstimationScalesUseCase.getScales().then(estimationScalesStateModelMapper.map).then(
        (value) {
          _scalesStateModel = value;
          scale.set(value.scales[0]);
          return value;
        },
      ),
    );
  }

  @action
  @override
  Future<void> onScaleChange(String? newScaleName) async {
    final newScaleStateModel = _scalesStateModel?.scales.firstWhere((element) => element.name == newScaleName);
    scale.set(newScaleStateModel);
  }

  @action
  @override
  Future<TaskStateModel?> onAddTask() async {
    taskTitle.validate();
    final taskStateModel = _createTaskStateModel();
    if (taskStateModel != null) {
      tasks.add(taskStateModel);
    }

    return taskStateModel;
  }

  @action
  @override
  Future<void> createSession() async {
    final domainModel = await _getCreateSessionDomainModel();
    if (domainModel == null) {
      return;
    }

    createSessionFuture = ObservableFuture(
      _createSessionUseCase.createSession(domainModel).then((_) => createdSession = true),
    );
  }

  Future<CreateSessionDomainModel?> _getCreateSessionDomainModel() async {
    sessionTitle.validate();

    if (scale.value == null || !(sessionTitle.isValid ?? false)) {
      return null;
    }

    final userCredentials = await _userCredentialsprovider.getUserCredentials();

    return CreateSessionDomainModel(
      creatorUid: userCredentials.uId,
      scaleName: scale.value!.name,
      sessionTitle: sessionTitle.value!,
      tasks: tasks.map((element) => element.toDomainModel()).toList(),
    );
  }

  TaskStateModel? _createTaskStateModel() {
    if (taskTitle.isValid != true) {
      return null;
    }

    final description = taskDescription.value == '' ? null : taskDescription.value;
    final jiraLink = taskJiraLink.value == '' ? null : taskJiraLink.value;

    return TaskStateModel(title: taskTitle.value!, description: description, jiraLink: jiraLink);
  }
}
