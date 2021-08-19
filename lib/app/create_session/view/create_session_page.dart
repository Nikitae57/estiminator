import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/core/multiple_reactions_disposer.dart';
import 'package:estiminator/app/core/strings.dart';
import 'package:estiminator/app/create_session/store/s_create_session.dart';
import 'package:estiminator/app/core/extension/scope_functions.dart';
import 'package:estiminator/app/create_session/view/create_session_page_content.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class CreateSessionPage extends StatefulWidget {
  CreateSessionPage(
    this._theme,
    this._store,
    this._strings, {
    Key? key,
  }) : super(key: key) {
    _store.loadScales();
  }

  static const String route = '/create_session';

  final AppTheme _theme;
  final CreateSessionS _store;
  final Strings _strings;

  @override
  _CreateSessionPageState createState() => _CreateSessionPageState();
}

class _CreateSessionPageState extends State<CreateSessionPage> {
  final multiDisposer = MultipleReactionsDisposer();

  @override
  void initState() {
    super.initState();
    initReactions();
  }

  @override
  void dispose() {
    super.dispose();
    multiDisposer.onDispose();
  }

  void initReactions() {
    reaction((_) => widget._store.createdSession, (createdSession) {
      Modular.to.pushNamedAndRemoveUntil(
        SessionsOverviewPage.route,
        ModalRoute.withName(SessionsOverviewPage.route),
      );
    }).also(multiDisposer.add);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget._strings.get(SId.CREATE_SESSION_APPBAR_TITLE),
          style: widget._theme.textTheme.headline4,
        ),
      ),
      body: Observer(builder: (context) {
        return FutureBuilder(
          future: widget._store.createSessionFuture,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.active ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox(
                height: double.infinity,
                child: Center(child: CircularProgressIndicator.adaptive()),
              );
            } else {
              return CreateSessionPageContent(
                theme: widget._theme,
                strings: widget._strings,
                store: widget._store,
              );
            }
          },
        );
      }),
    );
  }
}
