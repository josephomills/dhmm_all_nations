// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:all_nations/application/app/app_bloc.dart' as _i3;
import 'package:all_nations/application/donate/donate_bloc.dart' as _i4;
import 'package:all_nations/application/settings/settings_bloc.dart' as _i6;
import 'package:all_nations/domain/core/config/injectable_modules.dart' as _i7;
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    final formModule = _$FormModule();
    gh.singleton<_i3.AppBloc>(_i3.AppBloc());
    gh.factory<_i4.DonateBloc>(() => _i4.DonateBloc());
    gh.factory<_i5.GlobalKey<_i5.FormState>>(() => formModule.formKey);
    gh.singleton<_i6.SettingsBloc>(_i6.SettingsBloc());
    return this;
  }
}

class _$FormModule extends _i7.FormModule {}
