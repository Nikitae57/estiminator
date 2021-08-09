import 'dart:convert';

import 'package:estiminator/data/sessions/fake_sessions_repo/fake_sessions_json_provider.dart';
import 'package:estiminator/data/sessions/fake_sessions_repo/fake_sessions_repo.dart';
import 'package:estiminator/data/sessions/sessions_domain_model_mapper.dart';
import 'package:estiminator/domain/sessions/estimation_domain_model.dart';
import 'package:estiminator/domain/sessions/estimation_scale_domain_model.dart';
import 'package:estiminator/domain/sessions/session_domain_model.dart';
import 'package:estiminator/domain/sessions/task_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'fake_sessions_repo_test.mocks.dart';

const _SESSIONS_JSON = '''
[
  {
    "title": "Title",
    "is_finished": false,
    "current_task_index": null,
    "creator_uid": "uid1",
    "estimation_scale": {
      "name": "Fibonacci",
      "scale_values": ["0", "1/2", "1", "2", "3", "5", "8", "13", "20", "40", "?"]
    },
    "tasks": [
      {
        "title": "Task 1 title",
        "jira_link": null,
        "description": "Task description"
        "final_estimation": null,
        "estimations": [
          {
            "value": "2",
            "creator_uid": "User 1"
          },
          {
            "value": "3",
            "creator_uid": "User 2"
          },
          {
            "value": "1",
            "creator_uid": "User 3"
          }
        ]
      },
      {
        "title": "Task 2 title",
        "jira_link": "https://google.com",
        "description": "Task 2 description"
        "final_estimation": null,
        "estimations": [
          {
            "value": "40",
            "creator_uid": "User 1"
          }
        ]
      },
      {
        "title": "Task 3 title",
        "jira_link": "https://google.com",
        "description": "Task 3 description"
        "final_estimation": null,
        "estimations": []
      }
    ]
  }  
]''';

final successDomainModel = <SessionDomainModel>[
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
];

@GenerateMocks([FakeSessionsJsonProvider, SessionsDomainModelMapper])
void main() {
  final jsonProvider = MockFakeSessionsJsonProvider();
  final mapper = MockSessionsDomainModelMapper();

  group('Fake sessions repository tests', () {
    setUp(() {
      when(mapper.map(any));
    });

    test('''
    GIVEN fake repository
    WHEN getting session object
    THEN should return model correctly parsed from JSON
    ''', () async {
      final repo = FakeSessionsRepo(jsonProvider, mapper);
    });
  });
}
