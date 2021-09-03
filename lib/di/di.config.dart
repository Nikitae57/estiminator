// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/presentation/auth_page.dart' as _i3;
import '../auth/presentation/auth_store.dart' as _i26;
import '../core/data/local_user_credentials_provider.dart' as _i25;
import '../core/domain/credentials/user_credentials_provider.dart' as _i24;
import '../core/persentation/app_theme.dart' as _i23;
import '../core/persentation/strings.dart' as _i14;
import '../core/persentation/url_launcher.dart' as _i11;
import '../create_session/data/create_session_firebase_repo.dart' as _i29;
import '../create_session/data/create_session_json_mapper.dart' as _i4;
import '../create_session/data/estimation_scales_firebase_repo.dart' as _i30;
import '../create_session/domain/service/create_session_service.dart' as _i6;
import '../create_session/domain/service/estimation_scales_service.dart' as _i7;
import '../create_session/domain/use_case/create_session_use_case.dart' as _i12;
import '../create_session/domain/use_case/get_estimation_scales_use_case.dart'
    as _i15;
import '../create_session/presentation/model/scales_state_model_mapper.dart'
    as _i13;
import '../create_session/presentation/store/mx_create_session.dart' as _i32;
import '../create_session/presentation/store/s_create_session.dart' as _i21;
import '../session/data/model/estimation_scale_domain_model_mapper.dart' as _i5;
import '../session/data/model/session_domain_model_mapper.dart' as _i9;
import '../session/data/session_firebase_repo.dart' as _i18;
import '../session/domain/get_session_use_case.dart' as _i22;
import '../session/domain/reset_task_estimations_use_case.dart' as _i19;
import '../session/domain/session_repo.dart' as _i17;
import '../sessions_overview/data/firebase/firebase_session_overview_service.dart'
    as _i31;
import '../sessions_overview/domain/get_sessions_overview_use_case.dart'
    as _i16;
import '../sessions_overview/domain/sessions_overview_repo.dart' as _i8;
import '../sessions_overview/presentation/models/sessions_overview_state_model_mapper.dart'
    as _i20;
import '../sessions_overview/presentation/sessions_overview_page.dart' as _i10;
import '../sessions_overview/presentation/sessions_overview_store.dart' as _i27;
import 'app_module.dart' as _i28; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDiModule = _$AppDiModule(get);
  gh.factory<_i3.AuthPage>(() => appDiModule.loginPage());
  gh.factory<_i4.CreateSessionJsonMapper>(() => _i4.CreateSessionJsonMapper());
  gh.factory<_i5.EstimationScaleDomainModelMapper>(
      () => _i5.EstimationScaleDomainModelMapper());
  gh.factory<_i6.ICreateSessionRepo>(
      () => appDiModule.firebaseCreateSessionRepo);
  gh.factory<_i7.IEstimationScalesRepo>(
      () => appDiModule.firebaseEstimationScalesRepo);
  gh.factory<_i8.ISessionsOverviewRepo>(
      () => appDiModule.firebaseSessionsOverviewService);
  gh.factory<_i9.SessionDomainModelMapper>(
      () => _i9.SessionDomainModelMapper());
  gh.factory<_i10.SessionsOverviewPage>(() => appDiModule.sessionsPage());
  gh.factory<_i11.UrlLauncher>(() => _i11.UrlLauncher());
  gh.factory<_i12.CreateSessionUseCase>(
      () => _i12.CreateSessionUseCase(get<_i6.ICreateSessionRepo>()));
  gh.factory<_i13.EstimationScalesStateModelMapper>(
      () => _i13.EstimationScalesStateModelMapper(get<_i14.Strings>()));
  gh.factory<_i15.GetEstimationScalesUseCase>(
      () => _i15.GetEstimationScalesUseCase(get<_i7.IEstimationScalesRepo>()));
  gh.factory<_i16.GetSessionsOverviewUseCase>(() =>
      _i16.GetSessionsOverviewUseCase(
          sessionsRepo: get<_i8.ISessionsOverviewRepo>()));
  gh.factory<_i17.ISessionRepo>(() => _i18.SessionFirebaseRepo(
      get<_i9.SessionDomainModelMapper>(),
      get<_i5.EstimationScaleDomainModelMapper>()));
  gh.factory<_i19.ResetTaskEstimationsUseCase>(
      () => _i19.ResetTaskEstimationsUseCase(get<_i17.ISessionRepo>()));
  gh.factory<_i20.SessionsOverviewStateModelMapper>(
      () => _i20.SessionsOverviewStateModelMapper(get<_i14.Strings>()));
  gh.factory<_i21.CreateSessionS>(() => appDiModule.createSessionStore);
  gh.factory<_i22.GetSessionUseCase>(
      () => _i22.GetSessionUseCase(get<_i17.ISessionRepo>()));
  gh.singleton<_i23.AppTheme>(appDiModule.appTheme);
  gh.singleton<_i24.IUserCredentialsProvider>(
      _i25.LocalUserCredentialsProvider());
  gh.singleton<_i14.Strings>(_i14.Strings());
  gh.singleton<_i26.AuthStore>(appDiModule.loginStore);
  gh.singleton<_i27.SessionsOverviewStore>(appDiModule.sessionsOverviewStore);
  return get;
}

class _$AppDiModule extends _i28.AppDiModule {
  _$AppDiModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i23.AppTheme get appTheme => _i23.AppTheme();
  @override
  _i29.FirebaseCreateSessionRepo get firebaseCreateSessionRepo =>
      _i29.FirebaseCreateSessionRepo(_getIt<_i4.CreateSessionJsonMapper>());
  @override
  _i30.FirebaseEstimationScalesRepo get firebaseEstimationScalesRepo =>
      _i30.FirebaseEstimationScalesRepo();
  @override
  _i31.FirebaseSessionsOverviewService get firebaseSessionsOverviewService =>
      _i31.FirebaseSessionsOverviewService();
  @override
  _i26.AuthStore get loginStore =>
      _i26.AuthStore(_getIt<_i24.IUserCredentialsProvider>());
  @override
  _i27.SessionsOverviewStore get sessionsOverviewStore =>
      _i27.SessionsOverviewStore(_getIt<_i16.GetSessionsOverviewUseCase>(),
          _getIt<_i24.IUserCredentialsProvider>());
  @override
  _i32.CreateSessionMx get createSessionStore => _i32.CreateSessionMx(
      _getIt<_i15.GetEstimationScalesUseCase>(),
      _getIt<_i12.CreateSessionUseCase>(),
      _getIt<_i24.IUserCredentialsProvider>(),
      _getIt<_i13.EstimationScalesStateModelMapper>());
}
