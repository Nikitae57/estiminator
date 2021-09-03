import 'package:estiminator/core/domain/credentials/user_credentials_provider.dart';
import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/auth/presentation/auth_page.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/create_session/presentation/store/s_create_session.dart';
import 'package:estiminator/create_session/presentation/wdigets/create_session_page.dart';
import 'package:estiminator/session/domain/get_session_use_case.dart';
import 'package:estiminator/session/domain/reset_task_estimations_use_case.dart';
import 'package:estiminator/session/presentation/widgets/session_page.dart';
import 'package:estiminator/session/presentation/store/session_mx.dart';
import 'package:estiminator/sessions_overview/presentation/models/session_state_model.dart';
import 'package:estiminator/sessions_overview/presentation/sessions_overview_page.dart';
import 'package:estiminator/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// ignore: must_be_immutable
class AppModule extends Module {
  final sessionPageKey = GlobalKey();

  /// !WARNING - UGLY SHIT AHEAD
  /// This is a hack to make things work when widget inspector is used
  /// When toggling widget selection mode on session page for some reason the whole route being recreated.
  /// The problem is that it gets recreated without previously passed argument so we need to cache it manually
  late SessionStateModel _cachedSessionPageArgument;

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
            if (args.data != null) {
              _cachedSessionPageArgument = args.data as SessionStateModel;
            }

            final sessionStore = SessionMx(
              sessionStateModel: _cachedSessionPageArgument,
              getSessionUseCase: getIt<GetSessionUseCase>(),
              credentialsProvider: getIt<IUserCredentialsProvider>(),
              resetTaskEstimationsUseCase: getIt<ResetTaskEstimationsUseCase>(),
            );

            return SessionPage(
              sessionStore,
              getIt<AppTheme>(),
              getIt<Strings>(),
            );
          },
        ),
      ];
}
