import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/core/persentation/url_launcher.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:estiminator/session/domain/model/task_domain_model.dart';
import 'package:estiminator/session/presentation/store/session_store.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SessionPageContent extends StatelessWidget {
  const SessionPageContent({
    Key? key,
    required ISessionStore store,
    required AppTheme theme,
    required SessionDomainModel sessionDomainModel,
    required UrlLauncher urlLauncher,
    required Strings strings,
  })  : _store = store,
        _theme = theme,
        _sessionDomainModel = sessionDomainModel,
        _urlLauncher = urlLauncher,
        _strings = strings,
        super(key: key);

  final ISessionStore _store;
  final AppTheme _theme;
  final SessionDomainModel _sessionDomainModel;
  final UrlLauncher _urlLauncher;
  final Strings _strings;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ExpansionPanelList(
        children: _getTasksPanels(),
        expansionCallback: (index, isExpanded) {
          if (isExpanded) {
            _store.taskChosen(index);
          }
        },
      );
    });
  }

  List<ExpansionPanel> _getTasksPanels() {
    final panels = <ExpansionPanel>[];
    for (final task in _sessionDomainModel.tasks) {
      panels.add(
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return Row(
              children: [
                Text(
                  task.title,
                  style: _theme.textTheme.headline4,
                ),
                const Spacer(),
                if (task.finalEstimation == null) const SizedBox() else Text(task.finalEstimation!),
              ],
            );
          },
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(_theme.defaultMargin),
            child: Column(
              children: [
                /// Task description
                if (task.description != null) Text(task.description!),

                /// Jira link
                if (task.jiraLink != null)
                  RichText(
                    text: TextSpan(
                        text: task.jiraLink,
                        recognizer: TapGestureRecognizer()..onTap = () => _urlLauncher.tryLaunchUrl(task.jiraLink!)),
                  ),
                const Divider(),

                /// Estimations
                ..._getEstimationTileList(task),

                /// Estimation buttons
                Row(
                  children: [
                    if (_store.isHost())
                      TextButton(
                        onPressed: () {},
                        child: Text(_strings.get(SId.SESSION_REESTIMATE)),
                      ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        _strings.get(SId.SESSION_ESTIMATE),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return panels;
  }

  List<Widget> _getEstimationTileList(TaskDomainModel taskDomainModel) {
    final tiles = <Widget>[];
    for (final estimation in taskDomainModel.estimations) {
      tiles.add(Row(
        children: [
          Text(estimation.creatorUid),
          const Spacer(),
          Text(estimation.value),
        ],
      ));
    }

    return tiles;
  }
}
