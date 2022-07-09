import 'package:bases_flutter_web/ui/pages/counter_page.dart';
import 'package:flutter/material.dart';

import 'router/router_generation.dart';
import 'ui/pages/counter_provider_page.dart';

void main() => runApp(MyApp());

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
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}
