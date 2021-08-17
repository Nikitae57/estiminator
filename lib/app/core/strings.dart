import 'package:injectable/injectable.dart';

class SId {
  static const CREATE_SESSION_APPBAR_TITLE = 0;
  static const CREATE_SESSION_TITLE_HINT = 1;
  static const CREATE_SESSION_SCALES_LABEL = 2;
  static const CREATE_SESSION_SCALES_FETCH_ERROR = 3;
  static const CREATE_SESSION_RETRY = 4;
  static const CREATE_TASK_CARD_TITLE = 5;
  static const CREATE_TASK_BUTTON_TEXT = 6;
  static const CREATE_TASK_TITLE_LABEL = 7;
  static const CREATE_TASK_DESCRIPTION_LABEL = 8;
  static const CREATE_TASK_JIRA_LINK_LABEL = 9;
  static const CREATE_TASK_ADD_BUTTON_TEXT = 10;
  static const CREATE_TASK_INVALID_TITLE_ERROR_MSG = 11;
  static const CREATE_SESSION_TASK_TITLE = 12;
  static const CREATE_SESSION_TASK_DESCRIPTION = 13;
  static const CREATE_SESSION_TASK_JIRA_LINK = 14;
  static const CREATE_SESSION_DONE_BUTTON_TEXT = 15;
}

@singleton
class Strings {
  final _strings = <int, String>{
    SId.CREATE_SESSION_APPBAR_TITLE: 'Create session',
    SId.CREATE_SESSION_TITLE_HINT: 'Session title',
    SId.CREATE_SESSION_SCALES_LABEL: 'Choose a scale for session',
    SId.CREATE_SESSION_SCALES_FETCH_ERROR: 'Failed to load scales :(',
    SId.CREATE_SESSION_RETRY: 'RETRY',
    SId.CREATE_TASK_CARD_TITLE: 'Add tasks',
    SId.CREATE_TASK_BUTTON_TEXT: 'ADD',
    SId.CREATE_TASK_TITLE_LABEL: 'Title',
    SId.CREATE_TASK_DESCRIPTION_LABEL: 'Description (optional)',
    SId.CREATE_TASK_JIRA_LINK_LABEL: 'Jira link (optional)',
    SId.CREATE_TASK_ADD_BUTTON_TEXT: 'ADD',
    SId.CREATE_TASK_INVALID_TITLE_ERROR_MSG: 'Task title should not be empty',
    SId.CREATE_SESSION_TASK_TITLE: 'title:',
    SId.CREATE_SESSION_TASK_DESCRIPTION: 'description:',
    SId.CREATE_SESSION_TASK_JIRA_LINK: 'jira link:',
    SId.CREATE_SESSION_DONE_BUTTON_TEXT: 'DONE',
  };

  String get(int id) {
    return _strings[id]!;
  }
}
