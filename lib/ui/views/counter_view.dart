import 'package:flutter/material.dart';

import '../shared/custom_app_menu.dart';
import '../shared/custom_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomMenu(),
        const Spacer(),
        const Text(
          'Contador Stateful',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Contador we: $counter',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomButton(
              text: 'Incrementar', onPressed: () => setState(() => counter++)),
          CustomButton(
              text: 'Decrementar', onPressed: () => setState(() => counter--))
        ]),
        const Spacer(),
      ],
    );
  }
}
