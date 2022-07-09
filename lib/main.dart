import 'package:bases_flutter_web/location.dart';
import 'package:bases_flutter_web/services/navigation_service.dart';
import 'package:bases_flutter_web/ui/layout/main_layout_page.dart';
import 'package:bases_flutter_web/ui/pages/counter_page.dart';
import 'package:flutter/material.dart';

import 'router/router_generation.dart';

void main() {
  setupLocation();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppRuotes',
      //initialRoute: '/stateful',
      //routes: {
      //  '/stateful': (_) => const CounterPage(),
      //  '/provider': (_) => const CounterProviderPage(),
      //},
      initialRoute: '/stateful',
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      navigatorKey: location<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
