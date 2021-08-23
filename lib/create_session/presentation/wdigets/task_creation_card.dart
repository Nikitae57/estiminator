import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/create_session/presentation/model/task_state_model.dart';
import 'package:estiminator/create_session/presentation/store/s_create_session.dart';
import 'package:estiminator/create_session/presentation/wdigets/task_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TaskCreationCard extends StatelessWidget {
  const TaskCreationCard({Key? key, required AppTheme theme, required CreateSessionS store, required Strings strings})
      : _theme = theme,
        _store = store,
        _strings = strings,
        super(key: key);

  final AppTheme _theme;
  final CreateSessionS _store;
  final Strings _strings;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(_theme.defaultMargin),
        child: Column(
          children: [
            Text(
              _strings.get(SId.CREATE_TASK_CARD_TITLE),
              style: _theme.textTheme.headline5,
            ),
            SizedBox(height: _theme.defaultMargin),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 200),
              child: Observer(builder: (context) {
                return RawScrollbar(
                  thickness: 2,
                  thumbColor: _theme.theme.accentColor,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _store.tasks.length,
                      itemBuilder: (context, index) {
                        return TaskListItem(
                          theme: _theme,
                          strings: _strings,
                          taskStateModel: _store.tasks[index],
                        );
                      }),
                );
              }),
            ),
            ElevatedButton(
              onPressed: () => _createTaskThroughBottomSheet(context),
              child: Text(
                _strings.get(SId.CREATE_TASK_BUTTON_TEXT),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<TaskStateModel?> _createTaskThroughBottomSheet(BuildContext context) async {
    final stateModel = await showModalBottomSheet<TaskStateModel?>(
      backgroundColor: _theme.theme.backgroundColor,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(_theme.bigMargin),
            child: Column(children: [
              /// Task title
              Observer(
                builder: (context) {
                  return TextField(
                    decoration: InputDecoration(
                      labelText: _strings.get(SId.CREATE_TASK_TITLE_LABEL),
                      errorText: _store.taskTitle.isValid == false
                          ? _strings.get(SId.CREATE_TASK_INVALID_TITLE_ERROR_MSG)
                          : null,
                    ),
                    onChanged: _store.taskTitle.set,
                  );
                },
              ),
              SizedBox(height: _theme.defaultMargin),

              /// Task description
              TextField(
                decoration: InputDecoration(
                  labelText: _strings.get(SId.CREATE_TASK_DESCRIPTION_LABEL),
                ),
                onChanged: _store.taskDescription.set,
              ),
              SizedBox(height: _theme.defaultMargin),

              /// Jira link
              TextField(
                decoration: InputDecoration(
                  labelText: _strings.get(SId.CREATE_TASK_JIRA_LINK_LABEL),
                ),
                onChanged: _store.taskJiraLink.set,
              ),
              SizedBox(height: _theme.bigMargin),

              /// Add task button
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: ElevatedButton(
                  onPressed: () async {
                    final stateModel = await _store.onAddTask();
                    if (stateModel != null) {
                      Modular.to.pop<TaskStateModel>(stateModel);
                    }
                  },
                  child: Text(_strings.get(SId.CREATE_TASK_ADD_BUTTON_TEXT)),
                ),
              ),
            ]),
          ),
        );
      },
    );

    _clearState();

    return stateModel;
  }

  void _clearState() {
    _store.taskTitle.clear();
    _store.taskDescription.clear();
    _store.taskJiraLink.clear();
  }
}
