// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$NestedRouter extends RootStackRouter {
  // ignore: unused_element
  _$NestedRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FirstARoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FirstAScreen(),
      );
    },
    FirstBRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FirstBScreen(),
      );
    },
    HostFirstRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HostFirstScreen(),
      );
    },
    HostRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HostScreen(),
      );
    },
    SecondRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SecondScreen(),
      );
    },
  };
}

/// generated route for
/// [FirstAScreen]
class FirstARoute extends PageRouteInfo<void> {
  const FirstARoute({List<PageRouteInfo>? children})
      : super(
          FirstARoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstARoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FirstBScreen]
class FirstBRoute extends PageRouteInfo<void> {
  const FirstBRoute({List<PageRouteInfo>? children})
      : super(
          FirstBRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstBRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HostFirstScreen]
class HostFirstRoute extends PageRouteInfo<void> {
  const HostFirstRoute({List<PageRouteInfo>? children})
      : super(
          HostFirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'HostFirstRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HostScreen]
class HostRoute extends PageRouteInfo<void> {
  const HostRoute({List<PageRouteInfo>? children})
      : super(
          HostRoute.name,
          initialChildren: children,
        );

  static const String name = 'HostRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SecondScreen]
class SecondRoute extends PageRouteInfo<void> {
  const SecondRoute({List<PageRouteInfo>? children})
      : super(
          SecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
