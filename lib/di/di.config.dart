// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/presentation/auth_page.dart' as _i3;
import '../auth/presentation/auth_store.dart' as _i20;
import '../core/data/local_user_credentials_provider.dart' as _i18;
import '../core/domain/credentials/user_credentials_provider.dart' as _i17;
import '../core/persentation/app_theme.dart' as _i16;
import '../core/persentation/strings.dart' as _i19;
import '../create_session/data/create_session_fake_service.dart' as _i13;
import '../create_session/presentation/store/mx_create_session.dart' as _i24;
import '../create_session/presentation/store/s_create_session.dart' as _i15;
import '../data/session/scales/estimations_scales_fake_repo.dart' as _i7;
import '../domain/create_session/create_session_service.dart' as _i12;
import '../domain/create_session/create_session_use_case.dart' as _i14;
import '../domain/create_session/estimation_scales_repo.dart' as _i6;
import '../domain/create_session/get_estimation_scales_use_case.dart' as _i10;
import '../domain/session/get_session_use_case.dart' as _i4;
import '../domain/session/session_repo.dart' as _i5;
import '../sessions_overview/data/firebase/session_overview_service.dart'
    as _i23;
import '../sessions_overview/domain/get_sessions_overview_use_case.dart'
    as _i11;
import '../sessions_overview/domain/sessions_overview_repo.dart' as _i8;
import '../sessions_overview/presentation/sessions_overview_page.dart' as _i9;
import '../sessions_overview/presentation/sessions_overview_store.dart' as _i21;
import 'app_module.dart' as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDiModule = _$AppDiModule(get);
  gh.factory<_i3.AuthPage>(() => appDiModule.loginPage());
  gh.factory<_i4.GetSessionUserCase>(
      () => _i4.GetSessionUserCase(sessionRepo: get<_i5.ISessionRepo>()));
  gh.factory<_i6.IEstimationScalesRepo>(() => _i7.EstimationScalesFakeRepo());
  gh.factory<_i8.ISessionsOverviewRepo>(
      () => appDiModule.firebaseSessionsOverviewService);
  gh.factory<_i9.SessionsOverviewPage>(() => appDiModule.sessionsPage());
  gh.factory<_i10.GetEstimationScalesUseCase>(
      () => _i10.GetEstimationScalesUseCase(get<_i6.IEstimationScalesRepo>()));
  gh.factory<_i11.GetSessionsOverviewUseCase>(() =>
      _i11.GetSessionsOverviewUseCase(
          sessionsRepo: get<_i8.ISessionsOverviewRepo>()));
  gh.factory<_i12.ICreateSessionService>(
      () => _i13.CreateSessionFakeService(get<_i8.ISessionsOverviewRepo>()));
  gh.factory<_i14.CreateSessionUseCase>(
      () => _i14.CreateSessionUseCase(get<_i12.ICreateSessionService>()));
  gh.factory<_i15.CreateSessionS>(() => appDiModule.createSessionStore);
  gh.singleton<_i16.AppTheme>(appDiModule.appTheme);
  gh.singleton<_i17.IUserCredentialsprovider>(
      _i18.LocalUserCredentialsProvider());
  gh.singleton<_i19.Strings>(_i19.Strings());
  gh.singleton<_i20.AuthStore>(appDiModule.loginStore);
  gh.singleton<_i21.SessionsOverviewStore>(appDiModule.sessionsOverviewStore);
  return get;
}

class _$AppDiModule extends _i22.AppDiModule {
  _$AppDiModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i16.AppTheme get appTheme => _i16.AppTheme();
  @override
  _i23.FirebaseSessionsOverviewService get firebaseSessionsOverviewService =>
      _i23.FirebaseSessionsOverviewService();
  @override
  _i20.AuthStore get loginStore =>
      _i20.AuthStore(_getIt<_i17.IUserCredentialsprovider>());
  @override
  _i21.SessionsOverviewStore get sessionsOverviewStore =>
      _i21.SessionsOverviewStore(_getIt<_i11.GetSessionsOverviewUseCase>(),
          _getIt<_i17.IUserCredentialsprovider>());
  @override
  _i24.CreateSessionMx get createSessionStore => _i24.CreateSessionMx(
      _getIt<_i10.GetEstimationScalesUseCase>(),
      _getIt<_i14.CreateSessionUseCase>(),
      _getIt<_i17.IUserCredentialsprovider>());
}
