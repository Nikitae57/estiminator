import 'package:estiminator/app/core/input/input.dart';
import 'package:estiminator/app/create_session/model/estimation_scale_state_model.dart';
import 'package:estiminator/app/create_session/model/estimation_scales_state_model.dart';
import 'package:estiminator/app/create_session/model/task_state_model.dart';

abstract class CreateSessionS {
  Input<String?> get sessionTitle;

  Future<EstimationScalesStateModel>? get estimationScalesFuture;

  List<TaskStateModel> get tasks;

  Input<String?> get taskTitle;
  Input<String?> get taskDescription;
  Input<String?> get taskJiraLink;

  Input<EstimationScaleStateModel?> get scaleStateModel;

  Future<void> loadScales();

  Future<void> onScaleChange(String scaleName);

  /// bool indicates whether task added or not
  Future<TaskStateModel?> onAddTask();
}
