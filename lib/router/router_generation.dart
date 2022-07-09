import 'package:bases_flutter_web/ui/pages/counter_page.dart';
import 'package:flutter/material.dart';

import '../ui/pages/counter_provider_page.dart';
import '../ui/pages/page_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return MaterialPageRoute(builder: (_) => const CounterPage());
      case '/provider':
        return MaterialPageRoute(builder: (_) => const CounterProviderPage());
      default:
        return MaterialPageRoute(builder: (_) => const Page404());
    }
  }
}
