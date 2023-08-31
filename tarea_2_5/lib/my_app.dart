import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Iteso',
      theme: ThemeData(
        //Otro atributo es theme, nos ayuda a darle color y personalización de estilo a tu app que puedes utilizar en cualquier lugar
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(
                255, 17, 129, 19)), //Color principal de mi app
        useMaterial3: true, // Utilizamos Material Design
      ),
      home: const Botonesyotros(),
    );
  }
}

class Botonesyotros extends StatefulWidget {
  const Botonesyotros({super.key});

  @override
  State<Botonesyotros> createState() => _Botonesyotros();
}

class _Botonesyotros extends State<Botonesyotros> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
