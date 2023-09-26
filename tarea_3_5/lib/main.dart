import 'package:flutter/material.dart';
import 'package:tarea_3_5/home_page.dart';
import 'package:tarea_3_5/card_page.dart';

void main() => runApp(MaterialApp(
      title: 'Rutas',
      home: MyApp(
        porhacer: List.generate(10, (i) => Lista('Receta $i', 'Receta $i')),
      ),
      routes: {
        '/cardpage': (context) => const CardPage(),
      },
    ));
