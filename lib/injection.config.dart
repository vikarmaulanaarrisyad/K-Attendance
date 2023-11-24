// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/login/bloc/login_bloc.dart' as _i3;
import 'module/main_navigation/bloc/main_navigation_bloc.dart' as _i4;
import 'module/register/bloc/register_bloc.dart' as _i5;
import 'module/splash_screen/bloc/splash_screen_bloc.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.LoginBloc>(_i3.LoginBloc());
    gh.singleton<_i4.MainNavigationBloc>(_i4.MainNavigationBloc());
    gh.singleton<_i5.RegisterBloc>(_i5.RegisterBloc());
    gh.singleton<_i6.SplashScreenBloc>(_i6.SplashScreenBloc());
    return this;
  }
}
