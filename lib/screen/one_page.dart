import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provider_usage_tr_exp/provider/counter_provider.dart';
import 'package:simple_provider_usage_tr_exp/screen/second_page.dart';

class OnePageScreen extends StatelessWidget {
  const OnePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Kullanımı"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, value, child) {
                return Text(
                  "${value.counterToRead()}",
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPageScreen()));
                },
                child: const Text("Sayfaya Git")),
            const SizedBox(height: 15),
            Consumer<CounterProvider>(
              builder: (context, value, child) {
                return ElevatedButton(
                    onPressed: () {
                      // sayacı sıfırlayalım
                      value.counterToReset();
                    },
                    child: const Text("Sıfırla"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
