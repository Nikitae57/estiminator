import 'package:estiminator/app/login/login_page.dart';
import 'package:estiminator/app/sessions/sessions_overview/models/sessions_bundle_model.dart';
import 'package:estiminator/app/sessions/sessions_overview/sessions_overview_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute<LoginPage>(
          LoginPage.route,
          child: (context, args) => LoginPage(),
        ),
        ChildRoute<SessionsPage>(
          SessionsPage.route,
          child: (context, args) => SessionsPage(
            bundle: args.data as SessionsBundleModel,
          ),
        ),
      ];
}
