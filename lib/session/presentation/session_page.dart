import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/core/persentation/url_launcher.dart';
import 'package:estiminator/di/di.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:estiminator/session/presentation/session_page_content.dart';
import 'package:estiminator/session/presentation/store/session_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SessionPage extends StatelessWidget {
  const SessionPage(this._store, this._theme, this._strings, {Key? key}) : super(key: key);

  final ISessionStore _store;
  final AppTheme _theme;
  final Strings _strings;

  static const route = '/session';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _store.sessionStateModel.sessionTitle,
          style: _theme.textTheme.headline4,
        ),
      ),
      body: Observer(
        builder: (context) {
          return StreamBuilder(
            stream: _store.sessionStream,
            builder: (BuildContext context, AsyncSnapshot<SessionDomainModel> snapshot) {
              if (snapshot.connectionState == ConnectionState.active ||
                  snapshot.connectionState == ConnectionState.waiting) {
                return const SizedBox(
                  height: double.infinity,
                  child: Center(child: CircularProgressIndicator.adaptive()),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('ERROR'),
                );
              } else {
                return SessionPageContent(
                  store: _store,
                  theme: _theme,
                  sessionDomainModel: snapshot.data!,
                  urlLauncher: getIt<UrlLauncher>(),
                  strings: _strings,
                );
              }
            },
          );
        },
      ),
    );
  }
}
