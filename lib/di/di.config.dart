// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/app_theme.dart' as _i14;
import '../app/core/strings.dart' as _i16;
import '../app/create_session/store/mx_create_session.dart' as _i20;
import '../app/create_session/store/s_create_session.dart' as _i18;
import '../app/login/login_page.dart' as _i10;
import '../app/login/login_store.dart' as _i15;
import '../app/sessions_overview/sessions_overview_page.dart' as _i11;
import '../app/sessions_overview/sessions_overview_store.dart' as _i17;
import '../data/session/scales/estimations_scales_fake_repo.dart' as _i7;
import '../data/sessions_overview/fake_sessions_overview_repo/fake_sessions_json_provider.dart'
    as _i3;
import '../data/sessions_overview/fake_sessions_overview_repo/fake_sessions_overview_repo.dart'
    as _i9;
import '../domain/create_session/estimation_scales_repo.dart' as _i6;
import '../domain/create_session/get_estimation_scales_use_case.dart' as _i12;
import '../domain/session/get_session_use_case.dart' as _i4;
import '../domain/session/session_repo.dart' as _i5;
import '../domain/sessions_overview/get_sessions_overview_use_case.dart'
    as _i13;
import '../domain/sessions_overview/sessions_overview_repo.dart' as _i8;
import 'app_module.dart' as _i19; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.ISessionsOverviewRepo>(
      () => _i9.FakeSessionsOverviewRepo(get<_i3.FakeSessionsJsonProvider>()));
  gh.factory<_i10.LoginPage>(() => appDiModule.loginPage());
  gh.factory<_i11.SessionsPage>(() => appDiModule.sessionsPage());
  gh.factory<_i12.GetEstimationScalesUseCase>(
      () => _i12.GetEstimationScalesUseCase(get<_i6.IEstimationScalesRepo>()));
  gh.factory<_i13.GetSessionsOverviewUseCase>(() =>
      _i13.GetSessionsOverviewUseCase(
          sessionsRepo: get<_i8.ISessionsOverviewRepo>()));
  gh.singleton<_i14.AppTheme>(appDiModule.appTheme);
  gh.singleton<_i15.LoginStore>(appDiModule.loginStore);
  gh.singleton<_i16.Strings>(_i16.Strings());
  gh.singleton<_i17.SessionsOverviewStore>(appDiModule.sessionsOverviewStore);
  gh.singleton<_i18.CreateSessionS>(appDiModule.createSessionStore);
  return get;
}

class _$AppDiModule extends _i19.AppDiModule {
  _$AppDiModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i14.AppTheme get appTheme => _i14.AppTheme();
  @override
  _i15.LoginStore get loginStore => _i15.LoginStore();
  @override
  _i17.SessionsOverviewStore get sessionsOverviewStore =>
      _i17.SessionsOverviewStore(_getIt<_i13.GetSessionsOverviewUseCase>());
  @override
  _i20.CreateSessionMx get createSessionStore =>
      _i20.CreateSessionMx(_getIt<_i12.GetEstimationScalesUseCase>());
}
