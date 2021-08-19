// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/app_theme.dart' as _i19;
import '../app/core/strings.dart' as _i22;
import '../app/create_session/store/mx_create_session.dart' as _i25;
import '../app/create_session/store/s_create_session.dart' as _i18;
import '../app/login/login_page.dart' as _i10;
import '../app/login/login_store.dart' as _i21;
import '../app/sessions_overview/sessions_overview_page.dart' as _i11;
import '../app/sessions_overview/sessions_overview_store.dart' as _i23;
import '../data/create_session/create_session_fake_service.dart' as _i16;
import '../data/credentials/fake_user_credentials_provider.dart' as _i9;
import '../data/session/scales/estimations_scales_fake_repo.dart' as _i7;
import '../data/sessions_overview/fake_sessions_overview_repo/fake_sessions_json_provider.dart'
    as _i3;
import '../data/sessions_overview/fake_sessions_overview_repo/fake_sessions_overview_repo.dart'
    as _i20;
import '../domain/create_session/create_session_service.dart' as _i15;
import '../domain/create_session/create_session_use_case.dart' as _i17;
import '../domain/create_session/estimation_scales_repo.dart' as _i6;
import '../domain/create_session/get_estimation_scales_use_case.dart' as _i12;
import '../domain/credentials/user_credentials_provider.dart' as _i8;
import '../domain/session/get_session_use_case.dart' as _i4;
import '../domain/session/session_repo.dart' as _i5;
import '../domain/sessions_overview/get_sessions_overview_use_case.dart'
    as _i13;
import '../domain/sessions_overview/sessions_overview_repo.dart' as _i14;
import 'app_module.dart' as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDiModule = _$AppDiModule(get);
  gh.factory<_i3.FakeSessionsJsonProvider>(
      () => _i3.FakeSessionsJsonProvider());
  gh.factory<_i4.GetSessionUserCase>(
      () => _i4.GetSessionUserCase(sessionRepo: get<_i5.ISessionRepo>()));
  gh.factory<_i6.IEstimationScalesRepo>(() => _i7.EstimationScalesFakeRepo());
  gh.factory<_i8.IUserCredentialsprovider>(
      () => _i9.FakeUserCredentialsProvider());
  gh.factory<_i10.LoginPage>(() => appDiModule.loginPage());
  gh.factory<_i11.SessionsOverviewPage>(() => appDiModule.sessionsPage());
  gh.factory<_i12.GetEstimationScalesUseCase>(
      () => _i12.GetEstimationScalesUseCase(get<_i6.IEstimationScalesRepo>()));
  gh.factory<_i13.GetSessionsOverviewUseCase>(() =>
      _i13.GetSessionsOverviewUseCase(
          sessionsRepo: get<_i14.ISessionsOverviewRepo>()));
  gh.factory<_i15.ICreateSessionService>(
      () => _i16.CreateSessionFakeService(get<_i14.ISessionsOverviewRepo>()));
  gh.factory<_i17.CreateSessionUseCase>(
      () => _i17.CreateSessionUseCase(get<_i15.ICreateSessionService>()));
  gh.factory<_i18.CreateSessionS>(() => appDiModule.createSessionStore);
  gh.singleton<_i19.AppTheme>(appDiModule.appTheme);
  gh.singleton<_i14.ISessionsOverviewRepo>(_i20.FakeSessionsOverviewRepo());
  gh.singleton<_i21.LoginStore>(appDiModule.loginStore);
  gh.singleton<_i22.Strings>(_i22.Strings());
  gh.singleton<_i23.SessionsOverviewStore>(appDiModule.sessionsOverviewStore);
  return get;
}

class _$AppDiModule extends _i24.AppDiModule {
  _$AppDiModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i19.AppTheme get appTheme => _i19.AppTheme();
  @override
  _i21.LoginStore get loginStore => _i21.LoginStore();
  @override
  _i23.SessionsOverviewStore get sessionsOverviewStore =>
      _i23.SessionsOverviewStore(_getIt<_i13.GetSessionsOverviewUseCase>(),
          _getIt<_i8.IUserCredentialsprovider>());
  @override
  _i25.CreateSessionMx get createSessionStore => _i25.CreateSessionMx(
      _getIt<_i12.GetEstimationScalesUseCase>(),
      _getIt<_i17.CreateSessionUseCase>(),
      _getIt<_i8.IUserCredentialsprovider>());
}
