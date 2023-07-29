// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:all_nations/infrastructure/conference/conference.object.dart'
    as _i22;
import 'package:all_nations/presentation/pages/auth/login.page.dart' as _i1;
import 'package:all_nations/presentation/pages/auth/phone_input.page.dart'
    as _i2;
import 'package:all_nations/presentation/pages/auth/register.page.dart' as _i3;
import 'package:all_nations/presentation/pages/auth/sms_code.page.dart' as _i4;
import 'package:all_nations/presentation/pages/books/books.page.dart' as _i5;
import 'package:all_nations/presentation/pages/books/collection.page.dart'
    as _i6;
import 'package:all_nations/presentation/pages/books/collections.page.dart'
    as _i7;
import 'package:all_nations/presentation/pages/books/epub.page.dart' as _i8;
import 'package:all_nations/presentation/pages/conferences/conference_details.page.dart'
    as _i10;
import 'package:all_nations/presentation/pages/conferences/conferences.page.dart'
    as _i9;
import 'package:all_nations/presentation/pages/donate/donate.page.dart' as _i11;
import 'package:all_nations/presentation/pages/home/home.page.dart' as _i12;
import 'package:all_nations/presentation/pages/index.page.dart' as _i13;
import 'package:all_nations/presentation/pages/language/language.page.dart'
    as _i14;
import 'package:all_nations/presentation/pages/more/more.page.dart' as _i15;
import 'package:all_nations/presentation/pages/more/profile.page.dart' as _i16;
import 'package:all_nations/presentation/pages/more/settings.page.dart' as _i17;
import 'package:all_nations/presentation/pages/videos/videos.page.dart' as _i18;
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as _i21;
import 'package:flutter/material.dart' as _i20;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    PhoneInputRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PhoneInputPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i3.RegisterPage()),
      );
    },
    SMSCodeRoute.name: (routeData) {
      final args = routeData.argsAs<SMSCodeRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SMSCodePage(
          key: args.key,
          phone: args.phone,
          authAction: args.authAction,
          flowKey: args.flowKey,
        ),
      );
    },
    BooksRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i5.BooksPage()),
      );
    },
    CollectionRoute.name: (routeData) {
      final args = routeData.argsAs<CollectionRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(
            child: _i6.CollectionPage(
          key: args.key,
          collection: args.collection,
        )),
      );
    },
    CollectionsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i7.CollectionsPage()),
      );
    },
    EpubRoute.name: (routeData) {
      final args = routeData.argsAs<EpubRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.EpubPage(
          key: args.key,
          url: args.url,
        ),
      );
    },
    ConferencesRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i9.ConferencesPage()),
      );
    },
    ConferenceDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ConferenceDetailsRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ConferenceDetailsPage(
          key: args.key,
          conference: args.conference,
        ),
      );
    },
    DonateRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i11.DonatePage()),
      );
    },
    HomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i12.HomePage()),
      );
    },
    IndexRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.IndexPage(),
      );
    },
    LanguageRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.LanguagePage(),
      );
    },
    MoreRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.MorePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i16.ProfilePage()),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SettingsPage(),
      );
    },
    VideosRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.VideosPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PhoneInputPage]
class PhoneInputRoute extends _i19.PageRouteInfo<void> {
  const PhoneInputRoute({List<_i19.PageRouteInfo>? children})
      : super(
          PhoneInputRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneInputRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i19.PageRouteInfo<void> {
  const RegisterRoute({List<_i19.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SMSCodePage]
class SMSCodeRoute extends _i19.PageRouteInfo<SMSCodeRouteArgs> {
  SMSCodeRoute({
    _i20.Key? key,
    required String phone,
    required _i21.AuthAction? authAction,
    required Object flowKey,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          SMSCodeRoute.name,
          args: SMSCodeRouteArgs(
            key: key,
            phone: phone,
            authAction: authAction,
            flowKey: flowKey,
          ),
          initialChildren: children,
        );

  static const String name = 'SMSCodeRoute';

  static const _i19.PageInfo<SMSCodeRouteArgs> page =
      _i19.PageInfo<SMSCodeRouteArgs>(name);
}

class SMSCodeRouteArgs {
  const SMSCodeRouteArgs({
    this.key,
    required this.phone,
    required this.authAction,
    required this.flowKey,
  });

  final _i20.Key? key;

  final String phone;

  final _i21.AuthAction? authAction;

  final Object flowKey;

  @override
  String toString() {
    return 'SMSCodeRouteArgs{key: $key, phone: $phone, authAction: $authAction, flowKey: $flowKey}';
  }
}

/// generated route for
/// [_i5.BooksPage]
class BooksRoute extends _i19.PageRouteInfo<void> {
  const BooksRoute({List<_i19.PageRouteInfo>? children})
      : super(
          BooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BooksRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CollectionPage]
class CollectionRoute extends _i19.PageRouteInfo<CollectionRouteArgs> {
  CollectionRoute({
    _i20.Key? key,
    required int collection,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          CollectionRoute.name,
          args: CollectionRouteArgs(
            key: key,
            collection: collection,
          ),
          initialChildren: children,
        );

  static const String name = 'CollectionRoute';

  static const _i19.PageInfo<CollectionRouteArgs> page =
      _i19.PageInfo<CollectionRouteArgs>(name);
}

class CollectionRouteArgs {
  const CollectionRouteArgs({
    this.key,
    required this.collection,
  });

  final _i20.Key? key;

  final int collection;

  @override
  String toString() {
    return 'CollectionRouteArgs{key: $key, collection: $collection}';
  }
}

/// generated route for
/// [_i7.CollectionsPage]
class CollectionsRoute extends _i19.PageRouteInfo<void> {
  const CollectionsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          CollectionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CollectionsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.EpubPage]
class EpubRoute extends _i19.PageRouteInfo<EpubRouteArgs> {
  EpubRoute({
    _i20.Key? key,
    required String url,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          EpubRoute.name,
          args: EpubRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'EpubRoute';

  static const _i19.PageInfo<EpubRouteArgs> page =
      _i19.PageInfo<EpubRouteArgs>(name);
}

class EpubRouteArgs {
  const EpubRouteArgs({
    this.key,
    required this.url,
  });

  final _i20.Key? key;

  final String url;

  @override
  String toString() {
    return 'EpubRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i9.ConferencesPage]
class ConferencesRoute extends _i19.PageRouteInfo<void> {
  const ConferencesRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ConferencesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConferencesRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ConferenceDetailsPage]
class ConferenceDetailsRoute
    extends _i19.PageRouteInfo<ConferenceDetailsRouteArgs> {
  ConferenceDetailsRoute({
    _i20.Key? key,
    required _i22.ConferenceObject conference,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          ConferenceDetailsRoute.name,
          args: ConferenceDetailsRouteArgs(
            key: key,
            conference: conference,
          ),
          initialChildren: children,
        );

  static const String name = 'ConferenceDetailsRoute';

  static const _i19.PageInfo<ConferenceDetailsRouteArgs> page =
      _i19.PageInfo<ConferenceDetailsRouteArgs>(name);
}

class ConferenceDetailsRouteArgs {
  const ConferenceDetailsRouteArgs({
    this.key,
    required this.conference,
  });

  final _i20.Key? key;

  final _i22.ConferenceObject conference;

  @override
  String toString() {
    return 'ConferenceDetailsRouteArgs{key: $key, conference: $conference}';
  }
}

/// generated route for
/// [_i11.DonatePage]
class DonateRoute extends _i19.PageRouteInfo<void> {
  const DonateRoute({List<_i19.PageRouteInfo>? children})
      : super(
          DonateRoute.name,
          initialChildren: children,
        );

  static const String name = 'DonateRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HomePage]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.IndexPage]
class IndexRoute extends _i19.PageRouteInfo<void> {
  const IndexRoute({List<_i19.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i14.LanguagePage]
class LanguageRoute extends _i19.PageRouteInfo<void> {
  const LanguageRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i15.MorePage]
class MoreRoute extends _i19.PageRouteInfo<void> {
  const MoreRoute({List<_i19.PageRouteInfo>? children})
      : super(
          MoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ProfilePage]
class ProfileRoute extends _i19.PageRouteInfo<void> {
  const ProfileRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SettingsPage]
class SettingsRoute extends _i19.PageRouteInfo<void> {
  const SettingsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.VideosPage]
class VideosRoute extends _i19.PageRouteInfo<void> {
  const VideosRoute({List<_i19.PageRouteInfo>? children})
      : super(
          VideosRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideosRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
