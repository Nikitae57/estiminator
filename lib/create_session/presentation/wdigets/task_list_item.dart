import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/create_session/presentation/model/task_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem(
      {Key? key, required AppTheme theme, required Strings strings, required TaskStateModel taskStateModel})
      : _theme = theme,
        _strings = strings,
        _taskStateModel = taskStateModel,
        super(key: key);

  final AppTheme _theme;
  final Strings _strings;
  final TaskStateModel _taskStateModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Task title
        Row(children: [
          Expanded(
            flex: 1,
            child: Text(
              _strings.get(SId.CREATE_SESSION_TASK_TITLE),
              textAlign: TextAlign.end,
            ),
          ),
          SizedBox(width: _theme.defaultMargin),
          Expanded(
            flex: 3,
            child: Text(_taskStateModel.title),
          ),
        ]),

        /// Task description
        if (_taskStateModel.description == null)
          const SizedBox()
        else ...[
          SizedBox(height: _theme.smallMargin),
          Row(children: [
            Expanded(
              flex: 1,
              child: Text(
                _strings.get(SId.CREATE_SESSION_TASK_DESCRIPTION),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(width: _theme.defaultMargin),
            Expanded(
              flex: 3,
              child: Text(_taskStateModel.description!),
            ),
          ])
        ],

        /// Task jira link
        if (_taskStateModel.jiraLink == null)
          const SizedBox()
        else ...[
          SizedBox(height: _theme.smallMargin),
          Row(children: [
            Expanded(
              flex: 1,
              child: Text(
                _strings.get(SId.CREATE_SESSION_TASK_JIRA_LINK),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(width: _theme.defaultMargin),
            Expanded(
              flex: 3,
              child: Text(_taskStateModel.jiraLink!),
            ),
          ])
        ],
        const Divider(),
      ],
    );
  }
}
