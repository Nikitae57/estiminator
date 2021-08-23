// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/presentation/auth_page.dart' as _i3;
import '../auth/presentation/auth_store.dart' as _i21;
import '../core/data/local_user_credentials_provider.dart' as _i20;
import '../core/domain/credentials/user_credentials_provider.dart' as _i19;
import '../core/persentation/app_theme.dart' as _i18;
import '../core/persentation/strings.dart' as _i15;
import '../create_session/data/create_session_fake_service.dart' as _i13;
import '../create_session/presentation/store/mx_create_session.dart' as _i25;
import '../create_session/presentation/store/s_create_session.dart' as _i17;
import '../data/session/scales/estimations_scales_fake_repo.dart' as _i7;
import '../domain/create_session/create_session_service.dart' as _i12;
import '../domain/create_session/create_session_use_case.dart' as _i16;
import '../domain/create_session/estimation_scales_repo.dart' as _i6;
import '../domain/create_session/get_estimation_scales_use_case.dart' as _i10;
import '../domain/session/get_session_use_case.dart' as _i4;
import '../domain/session/session_repo.dart' as _i5;
import '../sessions_overview/data/firebase/session_overview_service.dart'
    as _i24;
import '../sessions_overview/domain/get_sessions_overview_use_case.dart'
    as _i11;
import '../sessions_overview/domain/sessions_overview_repo.dart' as _i8;
import '../sessions_overview/presentation/models/sessions_overview_state_model_mapper.dart'
    as _i14;
import '../sessions_overview/presentation/sessions_overview_page.dart' as _i9;
import '../sessions_overview/presentation/sessions_overview_store.dart' as _i22;
import 'app_module.dart' as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i14.SessionsOverviewStateModelMapper>(
      () => _i14.SessionsOverviewStateModelMapper(get<_i15.Strings>()));
  gh.factory<_i16.CreateSessionUseCase>(
      () => _i16.CreateSessionUseCase(get<_i12.ICreateSessionService>()));
  gh.factory<_i17.CreateSessionS>(() => appDiModule.createSessionStore);
  gh.singleton<_i18.AppTheme>(appDiModule.appTheme);
  gh.singleton<_i19.IUserCredentialsprovider>(
      _i20.LocalUserCredentialsProvider());
  gh.singleton<_i15.Strings>(_i15.Strings());
  gh.singleton<_i21.AuthStore>(appDiModule.loginStore);
  gh.singleton<_i22.SessionsOverviewStore>(appDiModule.sessionsOverviewStore);
  return get;
}

class _$AppDiModule extends _i23.AppDiModule {
  _$AppDiModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i18.AppTheme get appTheme => _i18.AppTheme();
  @override
  _i24.FirebaseSessionsOverviewService get firebaseSessionsOverviewService =>
      _i24.FirebaseSessionsOverviewService();
  @override
  _i21.AuthStore get loginStore =>
      _i21.AuthStore(_getIt<_i19.IUserCredentialsprovider>());
  @override
  _i22.SessionsOverviewStore get sessionsOverviewStore =>
      _i22.SessionsOverviewStore(_getIt<_i11.GetSessionsOverviewUseCase>(),
          _getIt<_i19.IUserCredentialsprovider>());
  @override
  _i25.CreateSessionMx get createSessionStore => _i25.CreateSessionMx(
      _getIt<_i10.GetEstimationScalesUseCase>(),
      _getIt<_i16.CreateSessionUseCase>(),
      _getIt<_i19.IUserCredentialsprovider>());
}
