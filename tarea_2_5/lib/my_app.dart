import 'package:flutter/material.dart';

/// Flutter code sample for [TextField].

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Botonesyotros(),
    );
  }
}

class Botonesyotros extends StatefulWidget {
  const Botonesyotros({super.key});

  @override
  State<Botonesyotros> createState() => _MainApp();
}

class InputsyOtros extends StatefulWidget {
  const InputsyOtros({super.key});

  @override
  State<Botonesyotros> createState() => _MainApp();
}

class _MainApp extends State<Botonesyotros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 129, 19),
        title: const Text(
          'Tip Time',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Column(
        children: <Widget>[Row(), Row(), Row()],
      ),
    );
  }
}
