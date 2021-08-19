import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/core/error_state_model.dart';
import 'package:estiminator/app/create_session/view/create_session_page.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_overview_error_state_model.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_overview_state_model.dart';
import 'package:estiminator/app/sessions_overview/session_list_item.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SessionsOverviewPage extends StatefulWidget {
  const SessionsOverviewPage(
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
  _SessionsOverviewPageState createState() => _SessionsOverviewPageState();
}

class _SessionsOverviewPageState extends State<SessionsOverviewPage> {
  @override
  void initState() {
    print('sdfsdf');
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      widget._store.loadSessions();
      widget._store.loadUsername();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Sessions',
        style: widget._theme.textTheme.headline4,
      )),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Observer(builder: (context) {
              return FutureBuilder(
                  future: widget._store.userNameFuture,
                  builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                    return ColoredBox(
                      color: widget._theme.theme.primaryColorDark,
                      child: Padding(
                        padding: EdgeInsets.all(widget._theme.defaultMargin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(Icons.account_circle_rounded),
                            SizedBox(width: widget._theme.defaultMargin),
                            if (snapshot.hasData)
                              Text(snapshot.data!, style: widget._theme.textTheme.bodyText1)
                            else
                              const CircularProgressIndicator.adaptive(),
                          ],
                        ),
                      ),
                    );
                  });
            }),
            Observer(builder: (context) {
              return widget._store.sessionsOverviewViewState.when<Widget>(
                data: _sessionsOverviewDataState,
                lodaing: _loadingState,
                error: _errorState,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Observer(builder: (context) {
        return widget._store.sessionsOverviewViewState.when(
          data: (_) {
            return FloatingActionButton(
              onPressed: () {
                Modular.to.pushNamed(CreateSessionPage.route);
              },
              backgroundColor: widget._theme.theme.accentColor,
              child: const Icon(Icons.add),
            );
          },
          lodaing: () => const SizedBox(),
          error: (_) => const SizedBox(),
        );
      }),
    );
  }

  Widget _errorState(
    ErrorStateModel<SessionsOverviewErrorStateModel> errorStateModel,
  ) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(widget._theme.bigMargin),
        child: Column(
          children: [
            Text(
              errorStateModel.stateModel.errorMessage,
              style: widget._theme.textTheme.headline4,
            ),
            SizedBox(height: widget._theme.defaultMargin),
            TextButton.icon(
              /*
              It supposed to be like that, but mapping happends in isolate and it prohibits
              passing non static functions references 🤬
              */
              // onPressed: errorStateModel.errorModel.retryAction,
              onPressed: () => widget._store.loadSessions(),
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
}
