import 'package:estiminator/data/sessions/estimations/estimation_data_model.dart';
import 'package:estiminator/data/sessions/scales/estimation_scale_data_model.dart';
import 'package:estiminator/data/sessions/session_data_model.dart';
import 'package:estiminator/data/sessions/sessions_data_model.dart';
import 'package:estiminator/data/sessions/sessions_domain_model_mapper.dart';
import 'package:estiminator/data/sessions/tasks/task_data_model.dart';
import 'package:estiminator/domain/sessions/estimation_domain_model.dart';
import 'package:estiminator/domain/sessions/estimation_scale_domain_model.dart';
import 'package:estiminator/domain/sessions/session_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_domain_model.dart';
import 'package:estiminator/domain/sessions/task_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';

final _dataModel = SessionsDataModel(sessions: [
  SessionDataModel(
      title: 'Title',
      creatorUid: 'uid1',
      isFinished: false,
      currentTaskIndex: null,
      estimationScale: EstimationScaleDataModel(
        name: 'Fibonacci',
        values: ['0', '1/2', '1', '2', '3', '5', '8', '13', '20', '40', '?'],
      ),
      tasks: <TaskDataModel>[
        TaskDataModel(
          title: 'Task 1 title',
          jiraLink: null,
          description: 'Task description',
          finalEstimation: null,
          estimations: <EstimationDataModel>[
            EstimationDataModel(estimationValue: '2', creatorUid: 'User 1'),
            EstimationDataModel(estimationValue: '3', creatorUid: 'User 2'),
            EstimationDataModel(estimationValue: '1', creatorUid: 'User 3'),
          ],
        ),
        TaskDataModel(
          title: 'Task 2 title',
          jiraLink: 'https://google.com',
          description: 'Task 2 description',
          finalEstimation: null,
          estimations: <EstimationDataModel>[
            EstimationDataModel(estimationValue: '40', creatorUid: 'User 1'),
          ],
        ),
        TaskDataModel(
          title: 'Task 3 title',
          jiraLink: 'https://google.com',
          description: 'Task 3 description',
          finalEstimation: null,
          estimations: <EstimationDataModel>[],
        ),
      ])
]);

final _successDomainModel = SessionsDomainModel(sessions: [
  SessionDomainModel(
      title: 'Title',
      creatorUid: 'uid1',
      isFinished: false,
      currentTaskIndex: null,
      estimationScale: EstimationScaleDomainModel(
        name: 'Fibonacci',
        values: ['0', '1/2', '1', '2', '3', '5', '8', '13', '20', '40', '?'],
      ),
      tasks: <TaskDomainModel>[
        TaskDomainModel(
          title: 'Task 1 title',
          jiraLink: null,
          description: 'Task description',
          finalEstimation: null,
          estimations: <EstimationDomainModel>[
            EstimationDomainModel(estimationValue: '2', creatorUid: 'User 1'),
            EstimationDomainModel(estimationValue: '3', creatorUid: 'User 2'),
            EstimationDomainModel(estimationValue: '1', creatorUid: 'User 3'),
          ],
        ),
        TaskDomainModel(
          title: 'Task 2 title',
          jiraLink: 'https://google.com',
          description: 'Task 2 description',
          finalEstimation: null,
          estimations: <EstimationDomainModel>[
            EstimationDomainModel(estimationValue: '40', creatorUid: 'User 1'),
          ],
        ),
        TaskDomainModel(
          title: 'Task 3 title',
          jiraLink: 'https://google.com',
          description: 'Task 3 description',
          finalEstimation: null,
          estimations: <EstimationDomainModel>[],
        ),
      ])
]);

void main() {
  test('''
  GIVEN mapper
  WHEN it's called
  THEN it should return correctly mapped 
  ''', () {
    final mapper = SessionsDomainModelMapper();

    expect(mapper.map(_dataModel), _successDomainModel);
  });
}
