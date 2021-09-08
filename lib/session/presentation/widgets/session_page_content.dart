import 'package:estiminator/auth/presentation/auth_page.dart';
import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/core/persentation/url_launcher.dart';
import 'package:estiminator/session/domain/model/full_session_domain_model.dart';
import 'package:estiminator/session/domain/model/task_domain_model.dart';
import 'package:estiminator/session/presentation/store/session_store.dart';
import 'package:estiminator/session/presentation/widgets/estimation_picker.dart';
import 'package:estiminator/session/presentation/widgets/task_subitem.dart';
import 'package:estiminator/sessions_overview/presentation/sessions_overview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
      return SingleChildScrollView(
        child: Column(
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
              child: Observer(
                builder: (context) {
                  if (_store.isSessionFinished) {
                    return ElevatedButton(
                      onPressed: () => Modular.to.pushNamedAndRemoveUntil(
                        SessionsOverviewPage.route,
                        ModalRoute.withName(AuthPage.route),
                      ),
                      child: Text(_strings.get(SId.SESSION_CLOSE)),
                    );
                  } else {
                    return FutureBuilder(
                      future: _store.isHost(),
                      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                        if (snapshot.hasData) {
                          final isHost = snapshot.data!;
                          if (isHost) {
                            if (_store.areCardsFlipped) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (_store.areThereEstimationsForCurrentTask)
                                    TextButton(
                                      onPressed: _store.resetEstimations,
                                      child: Text(
                                        _strings.get(SId.SESSION_RESET_ESTIMATIONS),
                                      ),
                                    ),
                                  SizedBox(width: _theme.defaultMargin),
                                  ElevatedButton(
                                    child: Text(_strings.get(SId.SESSION_ESTIMATE)),
                                    onPressed: () async {
                                      showDialog<String?>(
                                        context: context,
                                        builder: (context) {
                                          return EstimationPicker(
                                            theme: _theme,
                                            scaleModel: _fullSessionDomainModel.estimationScale,
                                            scaleValuePickedCallback: (estimation) {
                                              _store.pickEstimation(estimation);
                                              Modular.to.pop();
                                            },
                                          );
                                        },
                                      );
                                    },
                                  )
                                ],
                              );
                            } else {
                              /// Host; cards not flipped
                              if (_store.areThereEstimationsForCurrentTask) {
                                return ElevatedButton(
                                  child: Text(_strings.get(SId.SESSION_FLIP_THE_CARDS)),
                                  onPressed: _store.flipTheCards,
                                );
                              } else {
                                return ElevatedButton(
                                  child: Text(_strings.get(SId.SESSION_ESTIMATE)),
                                  onPressed: () async {
                                    showDialog<String?>(
                                      context: context,
                                      builder: (context) {
                                        return EstimationPicker(
                                          theme: _theme,
                                          scaleModel: _fullSessionDomainModel.estimationScale,
                                          scaleValuePickedCallback: (estimation) {
                                            _store.pickEstimation(estimation);
                                            Modular.to.pop();
                                          },
                                        );
                                      },
                                    );
                                  },
                                );
                              }
                            }
                          } else {
                            /// Not host
                            if (_store.areCardsFlipped || _store.hadUserEstimatedCurrentTask) {
                              return const SizedBox();
                            } else {
                              return ElevatedButton(
                                child: Text(_strings.get(SId.SESSION_ESTIMATE)),
                                onPressed: () async {
                                  showDialog<String?>(
                                    context: context,
                                    builder: (context) {
                                      return EstimationPicker(
                                        theme: _theme,
                                        scaleModel: _fullSessionDomainModel.estimationScale,
                                        scaleValuePickedCallback: (estimation) {
                                          _store.pickEstimation(estimation);
                                          Modular.to.pop();
                                        },
                                      );
                                    },
                                  );
                                },
                              );
                            }
                          }
                        } else {
                          return const SizedBox();
                        }
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
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
              padding: EdgeInsets.all(_theme.defaultMargin),

              /// Tast title
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 8,
                    fit: FlexFit.tight,
                    child: Text(
                      task.title,
                      style: _theme.textTheme.headline4,
                    ),
                  ),
                  if (task.finalEstimation == null)
                    const SizedBox()
                  else
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Text(
                        task.finalEstimation!,
                        textAlign: TextAlign.center,
                      ),
                    ),
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
              if (taskDomainModel.areCardsFlipped)
                Text(estimation.value)
              else
                const Icon(Icons.check_circle, color: Colors.green)
            ],
          ),
          SizedBox(height: _theme.smallMargin),
        ],
      ));
    }

    return tiles;
  }
}
