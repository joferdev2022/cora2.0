import 'package:coraapp2/pages/home-page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoraApp',
      initialRoute: 'home_page',
      routes: {
        'home_page': (_) => const HomePage(),
        // 'details': (_) => HomePage(),
        // 'data_screen': (_) => DataScreen(),
      },
    );
  }
}
