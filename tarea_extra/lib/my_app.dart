import 'package:flutter/material.dart';
import 'package:tarea_extra/second_screen.dart';

class Lista {
  final String titulo;
  final String contenido;
  Lista(this.titulo, this.contenido);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.porhacer});

  final List<Lista> porhacer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ruta 1'),
        ),
        body: ListView.builder(
          itemCount: porhacer.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: (Text(porhacer[index].titulo)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => SecondScreen(
                              lista: porhacer[index],
                            ))));
              },
            );
          },
        ));
  }
}
