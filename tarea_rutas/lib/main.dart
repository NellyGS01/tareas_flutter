import 'package:flutter/material.dart';
import 'package:tarea_extra/my_app.dart';

void main() => runApp(MaterialApp(
      title: 'Rutas',
      home: MyApp(
        porhacer:
            List.generate(2, (i) => Lista('Elemento $i', 'Descripcion $i')),
      ),
    ));
