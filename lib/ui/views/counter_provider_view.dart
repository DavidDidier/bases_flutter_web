import 'package:bases_flutter_web/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/custom_app_menu.dart';
import '../shared/custom_button.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(), child: _counterProviderViewBody());
  }
}

class _counterProviderViewBody extends StatelessWidget {
  const _counterProviderViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomMenu(),
        const Spacer(),
        const Text(
          'Contador provider',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Contador we: ${counterProvider.counter}',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomButton(
              text: 'Incrementar',
              onPressed: () => counterProvider.increment()),
          CustomButton(
              text: 'Decrementar', onPressed: () => counterProvider.decrement())
        ]),
        const Spacer(),
      ],
    );
  }
}
