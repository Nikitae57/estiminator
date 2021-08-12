// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/app_theme.dart' as _i11;
import '../app/login/login_page.dart' as _i8;
import '../app/login/login_store.dart' as _i12;
import '../app/sessions/sessions_overview/sessions_overview_page.dart' as _i9;
import '../app/sessions/sessions_overview/sessions_overview_store.dart' as _i13;
import '../data/sessions/sessions_overview/fake_sessions_overview_repo/fake_sessions_json_provider.dart'
    as _i3;
import '../data/sessions/sessions_overview/fake_sessions_overview_repo/fake_sessions_overview_repo.dart'
    as _i7;
import '../domain/sessions/session/get_session_use_case.dart' as _i4;
import '../domain/sessions/session/session_repo.dart' as _i5;
import '../domain/sessions/sessions_overview/get_sessions_overview_use_case.dart'
    as _i10;
import '../domain/sessions/sessions_overview/sessions_overview_repo.dart'
    as _i6;
import 'app_module.dart' as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.ISessionsOverviewRepo>(
      () => _i7.FakeSessionsOverviewRepo(get<_i3.FakeSessionsJsonProvider>()));
  gh.factory<_i8.LoginPage>(() => appDiModule.loginPage());
  gh.factory<_i9.SessionsPage>(() => appDiModule.sessionsPage());
  gh.factory<_i10.GetSessionsOverviewUseCase>(() =>
      _i10.GetSessionsOverviewUseCase(
          sessionsRepo: get<_i6.ISessionsOverviewRepo>()));
  gh.singleton<_i11.AppTheme>(appDiModule.appTheme);
  gh.singleton<_i12.LoginStore>(appDiModule.loginStore);
  gh.singleton<_i13.SessionsOverviewStore>(appDiModule.sessionsOverviewStore);
  return get;
}

class _$AppDiModule extends _i14.AppDiModule {
  _$AppDiModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i11.AppTheme get appTheme => _i11.AppTheme();
  @override
  _i12.LoginStore get loginStore => _i12.LoginStore();
  @override
  _i13.SessionsOverviewStore get sessionsOverviewStore =>
      _i13.SessionsOverviewStore(_getIt<_i10.GetSessionsOverviewUseCase>());
}
