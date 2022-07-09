import 'package:bases_flutter_web/ui/pages/shared/custom_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '404',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'No se encontro la página',
            style: TextStyle(fontSize: 40),
          ),
          CustomButton(
              text: 'Regresar',
              onPressed: () => Navigator.pushNamed(context, '/stateful'))
        ],
      ),
    ));
  }
}
