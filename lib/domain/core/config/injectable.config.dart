// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:all_nations/application/app/app_bloc.dart' as _i3;
import 'package:all_nations/application/auth/auth/auth_bloc.dart' as _i20;
import 'package:all_nations/application/auth/register/register_bloc.dart'
    as _i17;
import 'package:all_nations/application/books/books/books_bloc.dart' as _i21;
import 'package:all_nations/application/books/collection/collection_bloc.dart'
    as _i22;
import 'package:all_nations/application/books/collections/collections_bloc.dart'
    as _i8;
import 'package:all_nations/application/conference/conference_bloc.dart'
    as _i23;
import 'package:all_nations/application/conference/details/conference_details_bloc.dart'
    as _i9;
import 'package:all_nations/application/donate/donate_bloc.dart' as _i13;
import 'package:all_nations/application/home/home_bloc.dart' as _i24;
import 'package:all_nations/application/settings/settings_bloc.dart' as _i18;
import 'package:all_nations/domain/auth/auth.facade.dart' as _i4;
import 'package:all_nations/domain/books/books.facade.dart' as _i6;
import 'package:all_nations/domain/conference/conference.facade.dart' as _i10;
import 'package:all_nations/domain/core/config/injectable_modules.dart' as _i25;
import 'package:all_nations/domain/core/util/validator.dart' as _i19;
import 'package:all_nations/domain/home/home.facade.dart' as _i15;
import 'package:all_nations/infrastructure/auth/auth.repo.dart' as _i5;
import 'package:all_nations/infrastructure/books/books.repo.dart' as _i7;
import 'package:all_nations/infrastructure/conference/conference.repo.dart'
    as _i11;
import 'package:all_nations/infrastructure/home/home.repo.dart' as _i16;
import 'package:dio/dio.dart' as _i12;
import 'package:flutter/material.dart' as _i14;
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
    final appModule = _$AppModule();
    gh.singleton<_i3.AppBloc>(_i3.AppBloc());
    gh.factory<_i4.AuthFacade>(() => _i5.AuthRepo());
    gh.factory<_i6.BooksFacade>(() => _i7.BooksRepo());
    gh.factory<_i8.CollectionsBloc>(() => _i8.CollectionsBloc());
    gh.factory<_i9.ConferenceDetailsBloc>(() => _i9.ConferenceDetailsBloc());
    gh.factory<_i10.ConferenceFacade>(() => _i11.ConferenceRepo());
    gh.factory<_i12.Dio>(() => appModule.dio);
    gh.factory<_i13.DonateBloc>(() => _i13.DonateBloc());
    gh.factory<_i14.GlobalKey<_i14.FormState>>(() => appModule.formKey);
    gh.factory<_i15.HomeFacade>(() => _i16.HomeRepo());
    gh.factory<_i17.RegisterBloc>(
        () => _i17.RegisterBloc(gh<_i4.AuthFacade>()));
    gh.singleton<_i18.SettingsBloc>(_i18.SettingsBloc());
    gh.factory<_i19.Validator>(() => _i19.Validator());
    gh.singleton<_i20.AuthBloc>(_i20.AuthBloc(gh<_i4.AuthFacade>()));
    gh.factory<_i21.BooksBloc>(() => _i21.BooksBloc(
          gh<_i12.Dio>(),
          gh<_i6.BooksFacade>(),
        ));
    gh.factory<_i22.CollectionBloc>(() => _i22.CollectionBloc(gh<_i12.Dio>()));
    gh.factory<_i23.ConferenceBloc>(
        () => _i23.ConferenceBloc(gh<_i10.ConferenceFacade>()));
    gh.factory<_i24.HomeBloc>(() => _i24.HomeBloc(gh<_i15.HomeFacade>()));
    return this;
  }
}

class _$AppModule extends _i25.AppModule {}
