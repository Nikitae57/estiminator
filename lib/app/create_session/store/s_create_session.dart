import 'package:estiminator/app/core/input/input.dart';
import 'package:estiminator/app/create_session/model/estimation_scale_state_model.dart';
import 'package:estiminator/app/create_session/model/estimation_scales_state_model.dart';
import 'package:estiminator/app/create_session/model/task_state_model.dart';

abstract class CreateSessionS {
  Input<String?> get sessionTitle;

  Future<EstimationScalesStateModel>? get estimationScalesFuture;

  Future<void>? get createSessionFuture;

  List<TaskStateModel> get tasks;

  Input<String?> get taskTitle;
  Input<String?> get taskDescription;
  Input<String?> get taskJiraLink;

  Input<EstimationScaleStateModel?> get scale;

  Future<void> loadScales();

  Future<void> onScaleChange(String scaleName);

  /// If returned null then task not added
  Future<TaskStateModel?> onAddTask();

  Future<void> createSession();

  bool get createdSession;
}
