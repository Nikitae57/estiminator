import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/auth/presentation/auth_page.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/create_session/presentation/store/s_create_session.dart';
import 'package:estiminator/create_session/presentation/wdigets/create_session_page.dart';
import 'package:estiminator/session/presentation/session_page.dart';
import 'package:estiminator/session/presentation/store/session_store.dart';
import 'package:estiminator/sessions_overview/presentation/sessions_overview_page.dart';
import 'package:estiminator/di/di.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute<AuthPage>(
          AuthPage.route,
          child: (context, args) => getIt<AuthPage>(),
        ),
        ChildRoute<SessionsOverviewPage>(
          SessionsOverviewPage.route,
          child: (context, args) {
            return getIt<SessionsOverviewPage>();
          },
        ),
        ChildRoute<CreateSessionPage>(
          CreateSessionPage.route,
          child: (context, args) {
            return CreateSessionPage(
              getIt<AppTheme>(),
              getIt<CreateSessionS>(),
              getIt<Strings>(),
            );
          },
        ),
        ChildRoute<SessionPage>(
          SessionPage.route,
          child: (context, args) {
            return SessionPage(
              getIt<ISessionStore>(),
              getIt<AppTheme>(),
              getIt<Strings>(),
            );
          },
        ),
      ];
}
