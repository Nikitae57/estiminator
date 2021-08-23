import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/auth/auth_page.dart';
import 'package:estiminator/app/auth/auth_store.dart';
import 'package:estiminator/app/create_session/store/mx_create_session.dart';
import 'package:estiminator/app/create_session/store/s_create_session.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_page.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_store.dart';
import 'package:estiminator/data/sessions_overview/firebase/session_overview_service.dart';
import 'package:estiminator/di/di.dart';
import 'package:estiminator/domain/sessions_overview/sessions_overview_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppDiModule {
  @singleton
  AppTheme get appTheme;

  @injectable
  SessionsOverviewPage sessionsPage() => SessionsOverviewPage(
        getIt<SessionsOverviewStore>(),
        getIt<AppTheme>(),
        key: UniqueKey(),
      );

  @singleton
  SessionsOverviewStore get sessionsOverviewStore;

  @injectable
  AuthPage loginPage() => AuthPage(getIt<AuthStore>(), getIt<AppTheme>());

  @singleton
  AuthStore get loginStore;

  @Injectable(as: CreateSessionS)
  CreateSessionMx get createSessionStore;

  @Injectable(as: ISessionsOverviewRepo)
  FirebaseSessionsOverviewService get firebaseSessionsOverviewService;
}
