import 'dart:html';

import 'package:bases_flutter_web/ui/pages/shared/custom_button.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      child: Row(children: [
        CustomButton(
          text: 'Statefull contador',
          onPressed: () {
            Navigator.pushNamed(context, '/stateful');
          },
          color: Colors.black,
        ),
        const SizedBox(
          width: 12,
        ),
        CustomButton(
          text: 'Contador con provider',
          onPressed: () {
            Navigator.pushNamed(context, '/provider');
          },
          color: Colors.black,
        ),
        const SizedBox(
          width: 12,
        ),
        CustomButton(
          text: 'Otra pagina',
          onPressed: () {
            Navigator.pushNamed(context, '/page404');
          },
          color: Colors.black,
        ),
      ]),
    );
  }
}
