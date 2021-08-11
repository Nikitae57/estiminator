import 'dart:convert';

import 'package:estiminator/data/sessions/estimations/estimation_data_model.dart';
import 'package:estiminator/data/sessions/scales/estimation_scale_data_model.dart';
import 'package:estiminator/data/sessions/session_data_model.dart';
import 'package:estiminator/data/sessions/sessions_data_model.dart';
import 'package:estiminator/data/sessions/tasks/task_data_model.dart';
import 'package:flutter_test/flutter_test.dart';

const _SESSIONS_JSON = '''
{
   "sessions":[
      {
         "id": "id",
         "title":"Title",
         "is_finished":false,
         "current_task_index":null,
         "creator_uid":"uid1",
         "estimation_scale":{
            "name":"Fibonacci",
            "values":[
               "0",
               "1/2",
               "1",
               "2",
               "3",
               "5",
               "8",
               "13",
               "20",
               "40",
               "?"
            ]
         },
         "tasks":[
            {
               "title":"Task 1 title",
               "jira_link":null,
               "description":"Task description",
               "final_estimation":null,
               "estimations":[
                  {
                     "value":"2",
                     "creator_uid":"User 1"
                  },
                  {
                     "value":"3",
                     "creator_uid":"User 2"
                  },
                  {
                     "value":"1",
                     "creator_uid":"User 3"
                  }
               ]
            },
            {
               "title":"Task 2 title",
               "jira_link":"https://google.com",
               "description":"Task 2 description",
               "final_estimation":null,
               "estimations":[
                  {
                     "value":"40",
                     "creator_uid":"User 1"
                  }
               ]
            },
            {
               "title":"Task 3 title",
               "jira_link":"https://google.com",
               "description":"Task 3 description",
               "final_estimation":null,
               "estimations":[
               ]
            }
         ]
      }
   ]
}''';

final _dataModel = SessionsDataModel(sessions: [
  SessionDataModel(
      id: 'id',
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

void main() {
  test('''
  GIVEN JSON text
  WHEN calling EstimationsDataModel.fromJson with it
  THEN should result must be correctly mapped
  ''', () {
    final json = jsonDecode(_SESSIONS_JSON) as Map<String, dynamic>;

    expect(SessionsDataModel.fromJson(json), _dataModel);
  });
}
