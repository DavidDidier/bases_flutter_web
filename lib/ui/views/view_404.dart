import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
