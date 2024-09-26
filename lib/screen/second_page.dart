import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provider_usage_tr_exp/provider/counter_provider.dart';

class SecondPageScreen extends StatelessWidget {
  const SecondPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Kullanımı"),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, value, child) {
                return ElevatedButton(
                    onPressed: () {
                      value.counterToIncrease();
                    },
                    child: const Text("Artır"));
              },
            ),
            const SizedBox(width: 15),
            Consumer<CounterProvider>(builder: (context, value, child) {
              return Text(
                // value CounterProvider claasına ulaştık ve okuma metodu çağırdık.
                "${value.counterToRead()}",
                style: const TextStyle(fontSize: 30),
              );
            }),
            const SizedBox(width: 15),
            Consumer<CounterProvider>(
              builder: (context, value, child) {
                return ElevatedButton(
                    onPressed: () {
                      value.counterToReduce();
                    },
                    child: const Text("Azalt"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
