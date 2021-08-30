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
import '../core/persentation/strings.dart' as _i11;
import '../create_session/data/create_session_fake_service.dart' as _i15;
import '../create_session/domain/service/create_session_service.dart' as _i14;
import '../create_session/domain/service/estimation_scales_service.dart' as _i6;
import '../create_session/domain/use_case/create_session_use_case.dart' as _i17;
import '../create_session/domain/use_case/get_estimation_scales_use_case.dart'
    as _i12;
import '../create_session/presentation/model/scales_state_model_mapper.dart'
    as _i10;
import '../create_session/presentation/store/mx_create_session.dart' as _i26;
import '../create_session/presentation/store/s_create_session.dart' as _i18;
import '../data/session/scales/estimations_scales_fake_repo.dart' as _i7;
import '../session/domain/get_session_use_case.dart' as _i4;
import '../session/domain/session_repo.dart' as _i5;
import '../sessions_overview/data/firebase/session_overview_service.dart'
    as _i25;
import '../sessions_overview/domain/get_sessions_overview_use_case.dart'
    as _i13;
import '../sessions_overview/domain/sessions_overview_repo.dart' as _i8;
import '../sessions_overview/presentation/models/sessions_overview_state_model_mapper.dart'
    as _i16;
import '../sessions_overview/presentation/sessions_overview_page.dart' as _i9;
import '../sessions_overview/presentation/sessions_overview_store.dart' as _i23;
import 'app_module.dart' as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDiModule = _$AppDiModule(get);
  gh.factory<_i3.AuthPage>(() => appDiModule.loginPage());
  gh.factory<_i4.GetSessionUseCase>(
      () => _i4.GetSessionUseCase(get<_i5.ISessionRepo>()));
  gh.factory<_i6.IEstimationScalesService>(
      () => _i7.EstimationScalesFakeRepo());
  gh.factory<_i8.ISessionsOverviewRepo>(
      () => appDiModule.firebaseSessionsOverviewService);
  gh.factory<_i9.SessionsOverviewPage>(() => appDiModule.sessionsPage());
  gh.factory<_i10.EstimationScalesStateModelMapper>(
      () => _i10.EstimationScalesStateModelMapper(get<_i11.Strings>()));
  gh.factory<_i12.GetEstimationScalesUseCase>(() =>
      _i12.GetEstimationScalesUseCase(get<_i6.IEstimationScalesService>()));
  gh.factory<_i13.GetSessionsOverviewUseCase>(() =>
      _i13.GetSessionsOverviewUseCase(
          sessionsRepo: get<_i8.ISessionsOverviewRepo>()));
  gh.factory<_i14.ICreateSessionService>(
      () => _i15.CreateSessionFakeService(get<_i8.ISessionsOverviewRepo>()));
  gh.factory<_i16.SessionsOverviewStateModelMapper>(
      () => _i16.SessionsOverviewStateModelMapper(get<_i11.Strings>()));
  gh.factory<_i17.CreateSessionUseCase>(
      () => _i17.CreateSessionUseCase(get<_i14.ICreateSessionService>()));
  gh.factory<_i18.CreateSessionS>(() => appDiModule.createSessionStore);
  gh.singleton<_i19.AppTheme>(appDiModule.appTheme);
  gh.singleton<_i20.IUserCredentialsProvider>(
      _i21.LocalUserCredentialsProvider());
  gh.singleton<_i11.Strings>(_i11.Strings());
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
  _i25.FirebaseSessionsOverviewService get firebaseSessionsOverviewService =>
      _i25.FirebaseSessionsOverviewService();
  @override
  _i22.AuthStore get loginStore =>
      _i22.AuthStore(_getIt<_i20.IUserCredentialsProvider>());
  @override
  _i23.SessionsOverviewStore get sessionsOverviewStore =>
      _i23.SessionsOverviewStore(_getIt<_i13.GetSessionsOverviewUseCase>(),
          _getIt<_i20.IUserCredentialsProvider>());
  @override
  _i26.CreateSessionMx get createSessionStore => _i26.CreateSessionMx(
      _getIt<_i12.GetEstimationScalesUseCase>(),
      _getIt<_i17.CreateSessionUseCase>(),
      _getIt<_i20.IUserCredentialsProvider>(),
      _getIt<_i10.EstimationScalesStateModelMapper>());
}
