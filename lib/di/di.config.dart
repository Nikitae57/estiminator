// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/presentation/auth_page.dart' as _i3;
import '../auth/presentation/auth_store.dart' as _i22;
import '../core/data/local_user_credentials_provider.dart' as _i21;
import '../core/domain/credentials/user_credentials_provider.dart' as _i20;
import '../core/persentation/app_theme.dart' as _i19;
import '../core/persentation/strings.dart' as _i14;
import '../core/persentation/url_launcher.dart' as _i11;
import '../create_session/data/create_session_firebase_repo.dart' as _i25;
import '../create_session/data/create_session_json_mapper.dart' as _i4;
import '../create_session/data/estimation_scales_firebase_repo.dart' as _i26;
import '../create_session/domain/service/create_session_service.dart' as _i7;
import '../create_session/domain/service/estimation_scales_service.dart' as _i8;
import '../create_session/domain/use_case/create_session_use_case.dart' as _i12;
import '../create_session/domain/use_case/get_estimation_scales_use_case.dart'
    as _i15;
import '../create_session/presentation/model/scales_state_model_mapper.dart'
    as _i13;
import '../create_session/presentation/store/mx_create_session.dart' as _i28;
import '../create_session/presentation/store/s_create_session.dart' as _i18;
import '../session/domain/get_session_use_case.dart' as _i5;
import '../session/domain/session_repo.dart' as _i6;
import '../sessions_overview/data/firebase/firebase_session_overview_service.dart'
    as _i27;
import '../sessions_overview/domain/get_sessions_overview_use_case.dart'
    as _i16;
import '../sessions_overview/domain/sessions_overview_repo.dart' as _i9;
import '../sessions_overview/presentation/models/sessions_overview_state_model_mapper.dart'
    as _i17;
import '../sessions_overview/presentation/sessions_overview_page.dart' as _i10;
import '../sessions_overview/presentation/sessions_overview_store.dart' as _i23;
import 'app_module.dart' as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDiModule = _$AppDiModule(get);
  gh.factory<_i3.AuthPage>(() => appDiModule.loginPage());
  gh.factory<_i4.CreateSessionJsonMapper>(() => _i4.CreateSessionJsonMapper());
  gh.factory<_i5.GetSessionUseCase>(
      () => _i5.GetSessionUseCase(get<_i6.ISessionRepo>()));
  gh.factory<_i7.ICreateSessionRepo>(
      () => appDiModule.firebaseCreateSessionRepo);
  gh.factory<_i8.IEstimationScalesRepo>(
      () => appDiModule.firebaseEstimationScalesRepo);
  gh.factory<_i9.ISessionsOverviewRepo>(
      () => appDiModule.firebaseSessionsOverviewService);
  gh.factory<_i10.SessionsOverviewPage>(() => appDiModule.sessionsPage());
  gh.factory<_i11.UrlLauncher>(() => _i11.UrlLauncher());
  gh.factory<_i12.CreateSessionUseCase>(
      () => _i12.CreateSessionUseCase(get<_i7.ICreateSessionRepo>()));
  gh.factory<_i13.EstimationScalesStateModelMapper>(
      () => _i13.EstimationScalesStateModelMapper(get<_i14.Strings>()));
  gh.factory<_i15.GetEstimationScalesUseCase>(
      () => _i15.GetEstimationScalesUseCase(get<_i8.IEstimationScalesRepo>()));
  gh.factory<_i16.GetSessionsOverviewUseCase>(() =>
      _i16.GetSessionsOverviewUseCase(
          sessionsRepo: get<_i9.ISessionsOverviewRepo>()));
  gh.factory<_i17.SessionsOverviewStateModelMapper>(
      () => _i17.SessionsOverviewStateModelMapper(get<_i14.Strings>()));
  gh.factory<_i18.CreateSessionS>(() => appDiModule.createSessionStore);
  gh.singleton<_i19.AppTheme>(appDiModule.appTheme);
  gh.singleton<_i20.IUserCredentialsProvider>(
      _i21.LocalUserCredentialsProvider());
  gh.singleton<_i14.Strings>(_i14.Strings());
  gh.singleton<_i22.AuthStore>(appDiModule.loginStore);
  gh.singleton<_i23.SessionsOverviewStore>(appDiModule.sessionsOverviewStore);
  return get;
}

class _$AppDiModule extends _i24.AppDiModule {
  _$AppDiModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i19.AppTheme get appTheme => _i19.AppTheme();
  @override
  _i25.FirebaseCreateSessionRepo get firebaseCreateSessionRepo =>
      _i25.FirebaseCreateSessionRepo(_getIt<_i4.CreateSessionJsonMapper>());
  @override
  _i26.FirebaseEstimationScalesRepo get firebaseEstimationScalesRepo =>
      _i26.FirebaseEstimationScalesRepo();
  @override
  _i27.FirebaseSessionsOverviewService get firebaseSessionsOverviewService =>
      _i27.FirebaseSessionsOverviewService();
  @override
  _i22.AuthStore get loginStore =>
      _i22.AuthStore(_getIt<_i20.IUserCredentialsProvider>());
  @override
  _i23.SessionsOverviewStore get sessionsOverviewStore =>
      _i23.SessionsOverviewStore(_getIt<_i16.GetSessionsOverviewUseCase>(),
          _getIt<_i20.IUserCredentialsProvider>());
  @override
  _i28.CreateSessionMx get createSessionStore => _i28.CreateSessionMx(
      _getIt<_i15.GetEstimationScalesUseCase>(),
      _getIt<_i12.CreateSessionUseCase>(),
      _getIt<_i20.IUserCredentialsProvider>(),
      _getIt<_i13.EstimationScalesStateModelMapper>());
}
