import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/core/error_state_model.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_overview_error_state_model.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_overview_state_model.dart';
import 'package:estiminator/app/sessions_overview/session_list_item.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SessionsPage extends StatelessWidget {
  const SessionsPage(
    SessionsOverviewStore sessionsOverviewStore,
    AppTheme appTheme, {
    Key? key,
  })  : _store = sessionsOverviewStore,
        _theme = appTheme,
        super(key: key);

  static const route = '/sessions';

  final SessionsOverviewStore _store;
  final AppTheme _theme;

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
      floatingActionButton: _fabObserver,
    );
  }

  Observer get _fabObserver => Observer(builder: (context) {
        return _store.sessionsOverviewViewState.when(
          data: (_) {
            return FloatingActionButton(
              onPressed: () {},
              backgroundColor: _theme.theme.accentColor,
              child: const Icon(Icons.add),
            );
          },
          lodaing: () => const SizedBox(),
          error: (_) => const SizedBox(),
        );
      });

  Observer get _sessionsOverviewObserver => Observer(builder: (context) {
        return _store.sessionsOverviewViewState.when<Widget>(
          data: _sessionsOverviewDataState,
          lodaing: _loadingState,
          error: _errorState,
        );
      });

  Widget _errorState(
    ErrorStateModel<SessionsOverviewErrorStateModel> errorStateModel,
  ) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(_theme.bigMargin),
        child: Column(
          children: [
            Text(
              errorStateModel.stateModel.errorMessage,
              style: _theme.textTheme.headline4,
            ),
            SizedBox(height: _theme.defaultMargin),
            TextButton.icon(
              /*
              It supposed to be like that, but mapping happends in isolate and it prohibits
              passing non static functions references 🤬
              */
              // onPressed: errorStateModel.errorModel.retryAction,
              onPressed: () => _store.loadSessions(),
              icon: Icon(errorStateModel.stateModel.retryButtonIcon),
              label: Text(errorStateModel.stateModel.retryButtonText),
            )
          ],
        ),
      ),
    );
  }

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
              padding: EdgeInsets.all(_theme.defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.account_circle_rounded),
                  SizedBox(width: _theme.defaultMargin),
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
