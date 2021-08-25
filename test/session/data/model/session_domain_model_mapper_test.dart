import 'dart:convert';

import 'package:estiminator/session/data/model/session_data_model.dart';
import 'package:estiminator/session/data/model/session_domain_model_mapper.dart';
import 'package:estiminator/session/domain/model/estimation_domain_model.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:estiminator/session/domain/model/task_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';

const _ID = 'id';
const _CREATOR_UID = 'creator uid';
const _CURRENT_TASK_INDEX = 1;
const _IS_FINISHED = false;
const _SCALE_NAME = 'scale name';
const _DESCRIPTION = 'description';
const _FINAL_ESTIMATION = '1';
const _JIRA_LINK = 'https://bit.ly/3jbd9Gm';
const _TITLE = 'title';
const _NULL = 'null';
const _ESTIMATION_VALUE = '2';

const _JSON = '''
{
  "title":"$_TITLE",
  "creator_uid":"$_CREATOR_UID",
  "current_task_index":$_CURRENT_TASK_INDEX,
  "is_finished":$_IS_FINISHED,
  "scale_name":"$_SCALE_NAME",
  "tasks":[
    {
      "description":"$_DESCRIPTION",
      "final_estimation":"$_FINAL_ESTIMATION",
      "jira_link":"$_JIRA_LINK",
      "title":"$_TITLE",
      "estimations":[
        {
          "value":"$_ESTIMATION_VALUE",
          "creator_uid":"$_CREATOR_UID"
        }
      ]
    },
    {
      "description":$_NULL,
      "final_estimation":$_NULL,
      "jira_link":$_NULL,
      "title":"$_TITLE",
      "estimations":[]
    }
  ]
}
''';

const _sessionDomainModel = SessionDomainModel(
  id: _ID,
  title: _TITLE,
  creatorUid: _CREATOR_UID,
  currentTaskIndex: _CURRENT_TASK_INDEX,
  isFinished: _IS_FINISHED,
  tasks: [
    TaskDomainModel(
      title: _TITLE,
      description: _DESCRIPTION,
      finalEstimation: _FINAL_ESTIMATION,
      jiraLink: _JIRA_LINK,
      estimations: [
        EstimationDomainModel(
          value: _ESTIMATION_VALUE,
          creatorUid: _CREATOR_UID,
        ),
      ],
    ),
    TaskDomainModel(title: _TITLE, estimations: []),
  ],
);

final _sessionDataModel = SessionDataModel(
  id: _ID,
  json: jsonDecode(_JSON) as Map<String, dynamic>,
);

void main() {
  const mapper = SessionDomainModelMapper();
  group('SessionDomainModelMapper tests -', () {
    test('''
    GIVEN mapper's input is correct
    WHEN calling mapper
    THEN it should create correct model
    ''', () {
      final mappedModel = mapper.map(_sessionDataModel);

      expect(mappedModel, equals(_sessionDomainModel));
    });
  });
}
