import 'package:flutter/material.dart';
import 'package:tarea_3_5/home_page.dart';
import 'package:tarea_3_5/card_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/cardpage': (context) => const CardPage(),
      },
    );
  }
}
