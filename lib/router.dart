import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'main.dart';

part 'router.gr.dart';

class AppNavigatorObserver extends AutoRouteObserver {
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print(route.name);
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print(route.name);
    super.didChangeTabRoute(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print(route.settings.name);
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print(route.settings.name);
    super.didPush(route, previousRoute);
  }
}

@AutoRouterConfig()
class NestedRouter extends _$NestedRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HostRoute.page,
          children: [
            AutoRoute(
              page: HostFirstRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: FirstARoute.page,
                ),
                AutoRoute(page: FirstBRoute.page),
              ],
            ),
            AutoRoute(
              initial: true,
              page: SecondRoute.page,
            ),
          ],
        ),
      ];
}

