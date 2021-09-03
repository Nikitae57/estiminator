import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/core/persentation/url_launcher.dart';
import 'package:estiminator/session/domain/model/full_session_domain_model.dart';
import 'package:estiminator/session/domain/model/task_domain_model.dart';
import 'package:estiminator/session/presentation/store/session_store.dart';
import 'package:estiminator/session/presentation/widgets/task_subitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SessionPageContent extends StatelessWidget {
  const SessionPageContent({
    Key? key,
    required ISessionStore store,
    required AppTheme theme,
    required FullSessionDomainModel fullSessionDomainModel,
    required UrlLauncher urlLauncher,
    required Strings strings,
  })  : _store = store,
        _theme = theme,
        _fullSessionDomainModel = fullSessionDomainModel,
        _urlLauncher = urlLauncher,
        _strings = strings,
        super(key: key);

  final ISessionStore _store;
  final AppTheme _theme;
  final FullSessionDomainModel _fullSessionDomainModel;
  final UrlLauncher _urlLauncher;
  final Strings _strings;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Column(
        children: [
          ExpansionPanelList(
            expandedHeaderPadding: EdgeInsets.symmetric(vertical: _theme.defaultMargin),
            children: _getTasksPanels(),
            expansionCallback: (index, isExpanded) {
              if (!isExpanded) {
                _store.openTask(index);
              }
            },
          ),

          /// Estimation buttons
          Padding(
            padding: EdgeInsets.all(_theme.defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /// Reestimate button
                FutureBuilder(
                  future: _store.isHost(),
                  builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                    if (snapshot.hasData && snapshot.data == true) {
                      return TextButton(
                        onPressed: () {},
                        child: Text(_strings.get(SId.SESSION_REESTIMATE)),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                SizedBox(width: _theme.defaultMargin),

                /// Estimate button
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    _strings.get(SId.SESSION_ESTIMATE),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }

  List<ExpansionPanel> _getTasksPanels() {
    final panels = <ExpansionPanel>[];
    for (int i = 0; i < _fullSessionDomainModel.session.tasks.length; i++) {
      final task = _fullSessionDomainModel.session.tasks[i];

      panels.add(
        ExpansionPanel(
          canTapOnHeader: true,
          isExpanded: _store.openedTaskIndex == i,
          headerBuilder: (context, isExpanded) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: _theme.defaultMargin),

              /// Tast title
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    task.title,
                    style: _theme.textTheme.headline4,
                  ),
                  const Spacer(),
                  if (task.finalEstimation == null) const SizedBox() else Text(task.finalEstimation!),
                ],
              ),
            );
          },
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(_theme.defaultMargin),
            child: Column(
              children: [
                /// Task description
                if (task.description != null) ...[
                  TaskSubitem(
                    title: _strings.get(SId.SESSION_DESCRIPTION),
                    value: task.description!,
                    theme: _theme,
                  ),
                  SizedBox(
                    height: _theme.defaultMargin,
                  ),
                ],

                /// Jira link
                if (task.jiraLink != null)
                  TaskSubitem(
                    title: _strings.get(SId.SESSION_LINK),
                    value: task.jiraLink!,
                    theme: _theme,
                    onTap: () => _urlLauncher.tryLaunchUrl(task.jiraLink!),
                    isLink: true,
                  ),
                SizedBox(height: _theme.defaultMargin),
                const Divider(),
                SizedBox(height: _theme.defaultMargin),

                /// Estimations
                ..._getEstimationTileList(task),
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
      tiles.add(Column(
        children: [
          Row(
            children: [
              Text(estimation.creatorUid),
              const Spacer(),
              Text(estimation.value),
            ],
          ),
          SizedBox(height: _theme.smallMargin),
        ],
      ));
    }

    return tiles;
  }
}
