// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:all_nations/presentation/pages/books/books.page.dart' as _i1;
import 'package:all_nations/presentation/pages/books/collections.page.dart'
    as _i2;
import 'package:all_nations/presentation/pages/books/epub.page.dart' as _i3;
import 'package:all_nations/presentation/pages/conferences/conferences.page.dart'
    as _i4;
import 'package:all_nations/presentation/pages/donate/donate.page.dart' as _i5;
import 'package:all_nations/presentation/pages/index.page.dart' as _i6;
import 'package:all_nations/presentation/pages/more/more.page.dart' as _i7;
import 'package:all_nations/presentation/pages/more/settings.page.dart' as _i8;
import 'package:all_nations/presentation/pages/videos/videos.page.dart' as _i9;
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    BooksRoute.name: (routeData) {
      final args = routeData.argsAs<BooksRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BooksPage(
          key: args.key,
          collection: args.collection,
        ),
      );
    },
    CollectionsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i2.CollectionsPage()),
      );
    },
    EpubRoute.name: (routeData) {
      final args = routeData.argsAs<EpubRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.EpubPage(
          key: args.key,
          url: args.url,
        ),
      );
    },
    ConferencesRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ConferencesPage(),
      );
    },
    DonateRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i5.DonatePage()),
      );
    },
    IndexRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.IndexPage(),
      );
    },
    MoreRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MorePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsPage(),
      );
    },
    VideosRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.VideosPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BooksPage]
class BooksRoute extends _i10.PageRouteInfo<BooksRouteArgs> {
  BooksRoute({
    _i11.Key? key,
    required int collection,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          BooksRoute.name,
          args: BooksRouteArgs(
            key: key,
            collection: collection,
          ),
          initialChildren: children,
        );

  static const String name = 'BooksRoute';

  static const _i10.PageInfo<BooksRouteArgs> page =
      _i10.PageInfo<BooksRouteArgs>(name);
}

class BooksRouteArgs {
  const BooksRouteArgs({
    this.key,
    required this.collection,
  });

  final _i11.Key? key;

  final int collection;

  @override
  String toString() {
    return 'BooksRouteArgs{key: $key, collection: $collection}';
  }
}

/// generated route for
/// [_i2.CollectionsPage]
class CollectionsRoute extends _i10.PageRouteInfo<void> {
  const CollectionsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CollectionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CollectionsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EpubPage]
class EpubRoute extends _i10.PageRouteInfo<EpubRouteArgs> {
  EpubRoute({
    _i11.Key? key,
    required String url,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          EpubRoute.name,
          args: EpubRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'EpubRoute';

  static const _i10.PageInfo<EpubRouteArgs> page =
      _i10.PageInfo<EpubRouteArgs>(name);
}

class EpubRouteArgs {
  const EpubRouteArgs({
    this.key,
    required this.url,
  });

  final _i11.Key? key;

  final String url;

  @override
  String toString() {
    return 'EpubRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i4.ConferencesPage]
class ConferencesRoute extends _i10.PageRouteInfo<void> {
  const ConferencesRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ConferencesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConferencesRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DonatePage]
class DonateRoute extends _i10.PageRouteInfo<void> {
  const DonateRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DonateRoute.name,
          initialChildren: children,
        );

  static const String name = 'DonateRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.IndexPage]
class IndexRoute extends _i10.PageRouteInfo<void> {
  const IndexRoute({List<_i10.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MorePage]
class MoreRoute extends _i10.PageRouteInfo<void> {
  const MoreRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.VideosPage]
class VideosRoute extends _i10.PageRouteInfo<void> {
  const VideosRoute({List<_i10.PageRouteInfo>? children})
      : super(
          VideosRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideosRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
