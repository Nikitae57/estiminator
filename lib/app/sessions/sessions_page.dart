import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/sessions/models/sessions_bundle_model.dart';
import 'package:estiminator/app/sessions/models/sessions_overview_state_model.dart';
import 'package:estiminator/app/sessions/session_list_item.dart';
import 'package:estiminator/app/sessions/sessions_store.dart';
import 'package:estiminator/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SessionsPage extends StatelessWidget {
  SessionsPage({
    Key? key,
    required SessionsBundleModel bundle,
  }) : super(key: key) {
    _store.setUsername(bundle.userName);
  }

  static const route = '/sessions';

  final _store = getIt<SessionsStore>();
  final _theme = getIt<AppTheme>();

  @override
  Widget build(BuildContext context) {
    _store.loadSessions();

    return Scaffold(
      appBar: AppBar(title: _appBarTitleObserver),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            _usernameObserver,
            _sessionsOverviewObserver,
          ],
        ),
      ),
      floatingActionButton: _fab,
    );
  }

  FloatingActionButton get _fab => FloatingActionButton(
        onPressed: () {},
        backgroundColor: _theme.theme.accentColor,
        child: const Icon(Icons.add),
      );

  Observer get _sessionsOverviewObserver => Observer(builder: (context) {
        return _store.sessionsOverviewViewState.when<Widget>(
          data: _sessionsOverviewDataState,
          lodaing: _loadingState,
          error: (_) => Container(),
        );
      });

  Widget _loadingState() => const Expanded(
          child: Center(
        child: CircularProgressIndicator.adaptive(),
      ));

  Widget _sessionsOverviewDataState(SessionsOverviewStateModel stateModel) {
    return Expanded(
      child: ListView.builder(
          itemCount: stateModel.sessions.length,
          itemBuilder: (context, index) {
            return SessionListItem(
              stateModel: stateModel.sessions[index],
            );
          }),
    );
  }

  Observer get _appBarTitleObserver => Observer(
        builder: (context) => Text(
          _store.sessionsPageStateModel.appBarTitle,
          style: _theme.textTheme.headline4,
        ),
      );

  Observer get _usernameObserver => Observer(builder: (context) {
        final username = _store.sessionsPageStateModel.username;
        if (username.isNotEmpty) {
          return ColoredBox(
            color: _theme.theme.primaryColorDark,
            child: Padding(
              padding: EdgeInsets.all(_theme.defaultmarginMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.account_circle_rounded),
                  SizedBox(width: _theme.defaultmarginMargin),
                  Text(username, style: _theme.textTheme.bodyText1),
                ],
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      });
}
