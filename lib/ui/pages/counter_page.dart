import 'package:bases_flutter_web/ui/pages/shared/custom_app_menu.dart';
import 'package:bases_flutter_web/ui/pages/shared/custom_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                style:
                    const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomButton(
                text: 'Incrementar',
                onPressed: () => setState(() => counter++)),
            CustomButton(
                text: 'Decrementar', onPressed: () => setState(() => counter--))
          ]),
          const Spacer(),
        ],
      ),
    );
  }
}
