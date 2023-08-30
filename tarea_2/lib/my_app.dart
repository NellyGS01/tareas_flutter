import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Iteso',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Iteso'),
        ),
        body: const Column(
          children: <Widget>[
            Botonesyotros(),
          ],
        ),
      ),
    );
  }
}

class Botonesyotros extends StatefulWidget {
  const Botonesyotros({super.key});

  @override
  State<Botonesyotros> createState() => _Botonesyotros();
}

class _Botonesyotros extends State<Botonesyotros> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
          ListTile(
            title: const Text(
              "El ITESO, hhhhhg",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "San Pedro Tlaquepaque, Jal",
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 48,
                    onPressed: () {},
                    icon: const Icon(Icons.mail),
                  ),
                  const Text("Correo"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 48,
                    onPressed: () {},
                    icon: const Icon(Icons.phone),
                  ),
                  const Text("Llamada"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 48,
                    onPressed: () {},
                    icon: const Icon(Icons.directions),
                  ),
                  const Text("Ruta"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          const Text(
            '''El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.
        
        La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara''',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
