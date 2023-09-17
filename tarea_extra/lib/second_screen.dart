import 'package:flutter/material.dart';
import 'package:tarea_extra/my_app.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.lista});

  final Lista lista;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(lista.titulo),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Text(lista.contenido),
        ));
  }
}
