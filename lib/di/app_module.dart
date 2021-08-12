import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/login/login_page.dart';
import 'package:estiminator/app/login/login_store.dart';
import 'package:estiminator/app/sessions/sessions_overview/sessions_overview_page.dart';
import 'package:estiminator/app/sessions/sessions_overview/sessions_overview_store.dart';
import 'package:estiminator/di/di.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppDiModule {
  @singleton
  AppTheme get appTheme;

  @injectable
  SessionsPage sessionsPage() =>
      SessionsPage(getIt<SessionsOverviewStore>(), getIt<AppTheme>(),
          key: UniqueKey());

  @singleton
  SessionsOverviewStore get sessionsOverviewStore;

  @injectable
  LoginPage loginPage() => LoginPage(getIt<LoginStore>(), getIt<AppTheme>());

  @singleton
  LoginStore get loginStore;
}
