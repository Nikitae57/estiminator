import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/auth/presentation/auth_page.dart';
import 'package:estiminator/auth/presentation/auth_store.dart';
import 'package:estiminator/create_session/data/create_session_firebase_repo.dart';
import 'package:estiminator/create_session/data/estimation_scales_firebase_repo.dart';
import 'package:estiminator/create_session/domain/service/create_session_service.dart';
import 'package:estiminator/create_session/domain/service/estimation_scales_service.dart';
import 'package:estiminator/create_session/presentation/store/mx_create_session.dart';
import 'package:estiminator/create_session/presentation/store/s_create_session.dart';
import 'package:estiminator/sessions_overview/presentation/sessions_overview_page.dart';
import 'package:estiminator/sessions_overview/presentation/sessions_overview_store.dart';
import 'package:estiminator/sessions_overview/data/firebase/firebase_session_overview_service.dart';
import 'package:estiminator/di/di.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_repo.dart';
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

  @Injectable(as: IEstimationScalesRepo)
  FirebaseEstimationScalesRepo get firebaseEstimationScalesRepo;

  @Injectable(as: ICreateSessionRepo)
  FirebaseCreateSessionRepo get firebaseCreateSessionRepo;
}
