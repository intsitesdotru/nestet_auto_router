import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nestet_auto_router/router.dart';


void main() {
  runApp(NestedNavigationApp());
}

class NestedNavigationApp extends StatelessWidget {
  NestedNavigationApp({super.key});

  final nestedRouter = NestedRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: nestedRouter.config(
        navigatorObservers: () => [AppNavigatorObserver()],
      ),
    );
  }
}

@RoutePage()
class HostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Host Screen'),

        /// This will automatically display a back button if the nested router can pop
        leading: AutoLeadingButton(),
      ),
      body: AutoTabsRouter(
        routes: [
          HostFirstRoute(),
          SecondRoute(),
        ],
      ),
    );
  }
}

@RoutePage()
class HostFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter.tabBar(
        routes: [
          FirstARoute(),
          FirstBRoute(),
        ],
      ),
    );
  }
}

@RoutePage()
class FirstAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('FirstAScreen'),
      ),
    );
  }
}

@RoutePage()
class FirstBScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('FirstBScreen'),
      ),
    );
  }
}

@RoutePage()
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.navigateTo(HostFirstRoute()),
          child: Text('Go HostFirstRoute'),
        ),
      ),
    );
  }
}
