import 'package:estiminator/core/domain/mapper.dart';
import 'package:estiminator/data/session/estimations/estimation_data_model.dart';
import 'package:estiminator/data/session/tasks/task_data_model.dart';
import 'package:estiminator/session/data/model/session_data_model.dart';
import 'package:estiminator/session/domain/model/estimation_domain_model.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:estiminator/session/domain/model/task_domain_model.dart';

const String _SESSION_TITLE_FIELD = 'title';
const String _SESSION_CREATOR_UID_FIELD = 'creator_uid';
const String _SESSION_CURRENT_TASK_INDEX_FIELD = 'current_task_index';
const String _SESSION_IS_FINISHED_FIELD = 'is_finished';
const String _SESSION_TASKS_FIELD = 'tasks';

class SessionDomainModelMapper implements Mapper<SessionDataModel, SessionDomainModel> {
  const SessionDomainModelMapper();

  @override
  SessionDomainModel map(SessionDataModel input) {
    return SessionDomainModel(
      id: input.id,
      title: input.json[_SESSION_TITLE_FIELD] as String,
      creatorUid: input.json[_SESSION_CREATOR_UID_FIELD] as String,
      currentTaskIndex: input.json[_SESSION_CURRENT_TASK_INDEX_FIELD] as int?,
      isFinished: input.json[_SESSION_IS_FINISHED_FIELD] as bool,
      tasks: _mapTasks(input.json),
    );
  }

  List<TaskDomainModel> _mapTasks(Map<String, dynamic> sessionDoc) {
    final tasksDynamicList = sessionDoc[_SESSION_TASKS_FIELD] as List<dynamic>;
    final tasksJsonList = tasksDynamicList.map((dynamic element) => element as Map<String, dynamic>);
    final taskDataModels = tasksJsonList.map((taskJson) => TaskDataModel.fromJson(taskJson));

    return taskDataModels.map((taskDataModel) {
      return TaskDomainModel(
        description: taskDataModel.description,
        jiraLink: taskDataModel.jiraLink,
        finalEstimation: taskDataModel.finalEstimation,
        title: taskDataModel.title,
        estimations: _mapEstimations(taskDataModel.estimations),
      );
    }).toList();
  }

  List<EstimationDomainModel> _mapEstimations(List<EstimationDataModel> estimations) {
    return estimations.map((estimationDataModel) {
      return EstimationDomainModel(
        value: estimationDataModel.value,
        creatorUid: estimationDataModel.creatorUid,
      );
    }).toList();
  }
}
