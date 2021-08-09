import 'package:estiminator/app/core/mapper.dart';
import 'package:estiminator/data/sessions/estimations/estimation_data_model.dart';
import 'package:estiminator/data/sessions/scales/estimation_scale_data_model.dart';
import 'package:estiminator/data/sessions/session_data_model.dart';
import 'package:estiminator/data/sessions/sessions_data_model.dart';
import 'package:estiminator/data/sessions/tasks/task_data_model.dart';
import 'package:estiminator/domain/sessions/estimation_domain_model.dart';
import 'package:estiminator/domain/sessions/estimation_scale_domain_model.dart';
import 'package:estiminator/domain/sessions/session_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_domain_model.dart';
import 'package:estiminator/domain/sessions/task_domain_model.dart';

final sessionsDomainModelMapper = SessionsDomainModelMapper();

class SessionsDomainModelMapper
    extends Mapper<SessionsDataModel, SessionsDomainModel> {
  @override
  SessionsDomainModel map(SessionsDataModel input) => SessionsDomainModel(
        sessions: input.sessions
            .map((dataSession) => _mapSession(dataSession))
            .toList(),
      );

  SessionDomainModel _mapSession(SessionDataModel dataModel) =>
      SessionDomainModel(
        title: dataModel.title,
        creatorUid: dataModel.creatorUid,
        currentTaskIndex: dataModel.currentTaskIndex,
        isFinished: dataModel.isFinished,
        estimationScale: _mapEstimationScale(dataModel.estimationScale),
        tasks: dataModel.tasks.map((dataTask) => _mapTask(dataTask)).toList(),
      );
}

EstimationDomainModel _mapEstimation(EstimationDataModel dataModel) =>
    EstimationDomainModel(
      estimationValue: dataModel.estimationValue,
      creatorUid: dataModel.creatorUid,
    );

TaskDomainModel _mapTask(TaskDataModel dataModel) => TaskDomainModel(
      title: dataModel.title,
      description: dataModel.description,
      finalEstimation: dataModel.finalEstimation,
      jiraLink: dataModel.jiraLink,
      estimations: dataModel.estimations
          .map((dataEstimation) => _mapEstimation(dataEstimation))
          .toList(),
    );

EstimationScaleDomainModel _mapEstimationScale(
  EstimationScaleDataModel dataModel,
) =>
    EstimationScaleDomainModel(
      name: dataModel.name,
      values: dataModel.values,
    );
