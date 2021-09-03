import 'dart:developer';

import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/core/persentation/url_launcher.dart';
import 'package:estiminator/di/di.dart';
import 'package:estiminator/session/domain/model/full_session_domain_model.dart';
import 'package:estiminator/session/presentation/widgets/session_page_content.dart';
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
          return FutureBuilder(
            future: _store.sessionStream,
            builder: (BuildContext context, AsyncSnapshot<Stream<FullSessionDomainModel>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting ||
                  snapshot.connectionState == ConnectionState.active) {
                /// Loading
                return const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Center(child: CircularProgressIndicator.adaptive()),
                );
              } else if (snapshot.hasError) {
                /// Error
                return const Text('ERROR'); // TODO(Nikitae57): implement me
              } else {
                /// Data
                return StreamBuilder<FullSessionDomainModel>(
                  stream: snapshot.data,
                  builder: (BuildContext context, AsyncSnapshot<FullSessionDomainModel> snapshot) {
                    print('stream hasData=${snapshot.hasData}, ${snapshot.hasError}');
                    if (snapshot.hasError) {
                      log('ERROR: ${snapshot.error}');
                      return const Center(
                        child: Text('ERROR'), // TODO(Nikitae57): implement me
                      );
                    } else if (!snapshot.hasData) {
                      return const SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Center(child: CircularProgressIndicator.adaptive()),
                      );
                    } else {
                      return SessionPageContent(
                        store: _store,
                        theme: _theme,
                        fullSessionDomainModel: snapshot.data!,
                        urlLauncher: getIt<UrlLauncher>(),
                        strings: _strings,
                      );
                    }
                  },
                );
              }
            },
          );
        },
      ),
    );
  }
}
