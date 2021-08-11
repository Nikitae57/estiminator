import 'dart:convert';

import 'package:estiminator/data/sessions/estimations/estimation_data_model.dart';
import 'package:estiminator/data/sessions/scales/estimation_scale_data_model.dart';
import 'package:estiminator/data/sessions/session_data_model.dart';
import 'package:estiminator/data/sessions/tasks/task_data_model.dart';
import 'package:flutter_test/flutter_test.dart';

const _NULL = 'null';
const _ID = 'id';
const _SESSION_TITLE = 'session title';
const _SESSION_CREATOR_UID = 'creator uid';
const _IS_FINISHED = 'false';
const _CURRENT_TASK_INDEX = '3';
const _SCALE_NAME = 'scale name';
const _TASK_TITLE = 'task titile';
const _TASK_DESCRIPTION = 'description';
const _FINAL_ESTIMATION = '3';
const _JIRA_LINK = 'jira link';
const _ESTIMATION_VALUE_1 = '1';
const _ESTIMATION_VALUE_2 = '2';
const _ESTIMATION_VALUE_3 = '3';
const _CREATOR_UID_1 = 'uid1';
const _CREATOR_UID_2 = 'uid2';
const _CREATOR_UID_3 = 'uid3';

const _SESSION_JSON = '''
{
  "id": "$_ID",
  "title": "$_SESSION_TITLE",
  "creator_uid": "$_SESSION_CREATOR_UID",
  "is_finished": $_IS_FINISHED,
  "current_task_index": $_CURRENT_TASK_INDEX,
  "estimation_scale": {
    "name": "$_SCALE_NAME",
    "values": ["0", "1/2", "1", "2", "3", "5", "8"]
  },
  "tasks": [
    {
      "title": "$_TASK_TITLE",
      "description": "$_TASK_DESCRIPTION",
      "final_estimation": "$_FINAL_ESTIMATION",
      "jira_link": "$_JIRA_LINK",
      "estimations": [
        {
          "value": "$_ESTIMATION_VALUE_1",
          "creator_uid": "$_CREATOR_UID_1"
        },
        {
          "value": "$_ESTIMATION_VALUE_2",
          "creator_uid": "$_CREATOR_UID_2"
        },
        {
          "value": "$_ESTIMATION_VALUE_3",
          "creator_uid": "$_CREATOR_UID_3"
        }
      ]
    },
    {
      "title": "$_TASK_TITLE",
      "description": $_NULL,
      "final_estimation": $_NULL,
      "jira_link": $_NULL,
      "estimations": []
    }
  ]
}
''';

const _SESSION_JSON_WITH_NULL = '''
{
  "id": "$_ID",
  "title": "$_SESSION_TITLE",
  "creator_uid": "$_SESSION_CREATOR_UID",
  "is_finished": $_IS_FINISHED,
  "current_task_index": $_NULL,
  "estimation_scale": {
    "name": "$_SCALE_NAME",
    "values": ["0", "1/2", "1", "2", "3", "5", "8"]
  },
  "tasks": [
    {
      "title": "$_TASK_TITLE",
      "description": "$_TASK_DESCRIPTION",
      "final_estimation": "$_FINAL_ESTIMATION",
      "jira_link": "$_JIRA_LINK",
      "estimations": [
        {
          "value": "$_ESTIMATION_VALUE_1",
          "creator_uid": "$_CREATOR_UID_1"
        },
        {
          "value": "$_ESTIMATION_VALUE_2",
          "creator_uid": "$_CREATOR_UID_2"
        },
        {
          "value": "$_ESTIMATION_VALUE_3",
          "creator_uid": "$_CREATOR_UID_3"
        }
      ]
    },
    {
      "title": "$_TASK_TITLE",
      "description": $_NULL,
      "final_estimation": $_NULL,
      "jira_link": $_NULL,
      "estimations": []
    }
  ]
}
''';

final _estimationModel1 = EstimationDataModel(
  estimationValue: _ESTIMATION_VALUE_1,
  creatorUid: _CREATOR_UID_1,
);

final _estimationModel2 = EstimationDataModel(
  estimationValue: _ESTIMATION_VALUE_2,
  creatorUid: _CREATOR_UID_2,
);

final _estimationModel3 = EstimationDataModel(
  estimationValue: _ESTIMATION_VALUE_3,
  creatorUid: _CREATOR_UID_3,
);

final _scaleModel = EstimationScaleDataModel(
  name: _SCALE_NAME,
  values: ['0', '1/2', '1', '2', '3', '5', '8'],
);

final _taskModel1 = TaskDataModel(
  title: _TASK_TITLE,
  description: _TASK_DESCRIPTION,
  finalEstimation: _FINAL_ESTIMATION,
  jiraLink: _JIRA_LINK,
  estimations: [
    _estimationModel1,
    _estimationModel2,
    _estimationModel3,
  ],
);

final _taskModel2 = TaskDataModel(
  title: _TASK_TITLE,
  description: null,
  finalEstimation: null,
  jiraLink: null,
  estimations: [],
);

final _dataModel = SessionDataModel(
  id: _ID,
  title: _SESSION_TITLE,
  creatorUid: _SESSION_CREATOR_UID,
  isFinished: _IS_FINISHED == 'true',
  estimationScale: _scaleModel,
  currentTaskIndex: int.parse(_CURRENT_TASK_INDEX),
  tasks: [_taskModel1, _taskModel2],
);

final _dataModelWithNullIndex = SessionDataModel(
  id: _ID,
  title: _SESSION_TITLE,
  creatorUid: _SESSION_CREATOR_UID,
  isFinished: _IS_FINISHED == 'true',
  estimationScale: _scaleModel,
  currentTaskIndex: null,
  tasks: [_taskModel1, _taskModel2],
);

void main() {
  group('SessionDataModel tests', () {
    test('''
    GIVEN session JSON with non-null task index
    WHEN creating model from it
    THEN the model should be mapped correctly
    ''', () {
      final json = jsonDecode(_SESSION_JSON) as Map<String, dynamic>;

      final parsedModel = SessionDataModel.fromJson(json);

      expect(parsedModel, _dataModel);
    });

    test('''
    GIVEN session JSON with null task index
    WHEN creating model from it
    THEN the model should be mapped correctly
    ''', () {
      final json = jsonDecode(_SESSION_JSON_WITH_NULL) as Map<String, dynamic>;

      final parsedModel = SessionDataModel.fromJson(json);

      expect(parsedModel, _dataModelWithNullIndex);
    });
  });
}
