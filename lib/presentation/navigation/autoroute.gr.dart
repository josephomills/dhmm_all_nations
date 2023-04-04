// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:all_nations/presentation/pages/books/books.page.dart' as _i1;
import 'package:all_nations/presentation/pages/conferences/conferences.page.dart'
    as _i2;
import 'package:all_nations/presentation/pages/donate/donate.page.dart' as _i3;
import 'package:all_nations/presentation/pages/index.page.dart' as _i4;
import 'package:all_nations/presentation/pages/more/more.page.dart' as _i5;
import 'package:all_nations/presentation/pages/more/settings.page.dart' as _i6;
import 'package:all_nations/presentation/pages/videos/videos.page.dart' as _i7;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    BooksRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BooksPage(),
      );
    },
    ConferencesRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ConferencesPage(),
      );
    },
    DonateRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i3.DonatePage()),
      );
    },
    IndexRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.IndexPage(),
      );
    },
    MoreRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MorePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsPage(),
      );
    },
    VideosRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.VideosPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BooksPage]
class BooksRoute extends _i8.PageRouteInfo<void> {
  const BooksRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BooksRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ConferencesPage]
class ConferencesRoute extends _i8.PageRouteInfo<void> {
  const ConferencesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ConferencesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConferencesRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DonatePage]
class DonateRoute extends _i8.PageRouteInfo<void> {
  const DonateRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DonateRoute.name,
          initialChildren: children,
        );

  static const String name = 'DonateRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.IndexPage]
class IndexRoute extends _i8.PageRouteInfo<void> {
  const IndexRoute({List<_i8.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MorePage]
class MoreRoute extends _i8.PageRouteInfo<void> {
  const MoreRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SettingsPage]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.VideosPage]
class VideosRoute extends _i8.PageRouteInfo<void> {
  const VideosRoute({List<_i8.PageRouteInfo>? children})
      : super(
          VideosRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideosRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
