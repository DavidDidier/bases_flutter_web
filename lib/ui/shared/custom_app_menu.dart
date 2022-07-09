import 'dart:html';

import 'package:bases_flutter_web/services/navigation_service.dart';
import 'package:bases_flutter_web/ui/shared/custom_button.dart';
import 'package:flutter/material.dart';

import '../../location.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth >= 500)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      child: Row(children: [
        CustomButton(
          text: 'Statefull contador',
          onPressed: () =>
              location<NavigationService>().navigateTo('/stateful'),
          color: Colors.black,
        ),
        const SizedBox(
          width: 12,
        ),
        CustomButton(
          text: 'Contador con provider',
          onPressed: () =>
              location<NavigationService>().navigateTo('/provider'),
          color: Colors.black,
        ),
        const SizedBox(
          width: 12,
        ),
        CustomButton(
          text: 'Otra pagina',
          onPressed: () => location<NavigationService>().navigateTo('/ssadas'),
          color: Colors.black,
        ),
      ]),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomButton(
          text: 'Statefull contador',
          onPressed: () =>
              location<NavigationService>().navigateTo('/stateful'),
          color: Colors.black,
        ),
        const SizedBox(
          width: 12,
        ),
        CustomButton(
          text: 'Contador con provider',
          onPressed: () =>
              location<NavigationService>().navigateTo('/provider'),
          color: Colors.black,
        ),
        const SizedBox(
          width: 12,
        ),
        CustomButton(
          text: 'Otra pagina',
          onPressed: () => location<NavigationService>().navigateTo('/ssadas'),
          color: Colors.black,
        ),
      ]),
    );
  }
}
