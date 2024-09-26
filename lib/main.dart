import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provider_usage_tr_exp/provider/counter_provider.dart';
import 'package:simple_provider_usage_tr_exp/screen/one_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Providerın tüm uygulamayı kapsaması için MyApp altında tanımlamalar yapıyoruz
    // MultiProvider birden fazla provide sınıf modelini uygulamaay tanıtır ve çalıştırı
    // ChangeNotifierProvider ile provider sınıfı uygulamaya ekliyoruz böylelikle dinleme işlemi için hazır bekliyor
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider())
      ],
      child: MaterialApp(
        title: 'Provider Kullanımı',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              color: Colors.orange,
              elevation: 0,
              titleTextStyle: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          useMaterial3: true,
        ),
        home: const OnePageScreen(),
      ),
    );
  }
}
