import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/core/strings.dart';
import 'package:estiminator/app/create_session/store/s_create_session.dart';
import 'package:estiminator/app/create_session/view/create_session_page.dart';
import 'package:estiminator/app/login/login_page.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_bundle_model.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_page.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_store.dart';
import 'package:estiminator/di/di.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute<LoginPage>(
          LoginPage.route,
          child: (context, args) => getIt<LoginPage>(),
        ),
        ChildRoute<SessionsPage>(
          SessionsPage.route,
          child: (context, args) {
            final bundle = args.data as SessionsBundleModel;
            getIt<SessionsOverviewStore>().setUsername(bundle.userName);

            return getIt<SessionsPage>();
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
        )
      ];
}
