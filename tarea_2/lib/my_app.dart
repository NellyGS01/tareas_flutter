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
  int _counter = 0;

  bool standardSelected = false;
  Color _iconColor = Colors.black;

  bool standardSelected2 = false;
  Color _iconColor2 = Colors.black;

  bool standardSelected3 = false;
  Color _iconColor3 = Colors.black;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text(
              "El ITESO, Universidad Jesuita de Guadalajara",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "San Pedro Tlaquepaque, Jal",
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
            trailing: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        iconSize: 25,
                        onPressed: _incrementCounter,
                        icon: const Icon(Icons.thumb_up, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Text(
                  '$_counter',
                  style: const TextStyle(
                      height: 0, fontSize: 15, color: Colors.indigo),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: <Widget>[
                IconButton(
                  iconSize: 48,
                  isSelected: standardSelected,
                  icon: Icon(Icons.mail, color: _iconColor),
                  onPressed: () {
                    setState(() {
                      standardSelected = !standardSelected;
                      if (standardSelected == false) {
                        _iconColor = Colors.cyan;
                      } else {
                        _iconColor = Colors.black;
                      }
                    });
                    final snackBar = SnackBar(
                      content: const Text(
                          'Puedes encontrar comida en sus cafeterías'),
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {},
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                const Text("Mail"),
              ]),
              Column(children: <Widget>[
                IconButton(
                  iconSize: 48,
                  isSelected: standardSelected2,
                  icon: Icon(Icons.phone, color: _iconColor2),
                  onPressed: () {
                    setState(() {
                      standardSelected2 = !standardSelected2;
                      if (standardSelected2 == false) {
                        _iconColor2 = Colors.cyan;
                      } else {
                        _iconColor2 = Colors.black;
                      }
                    });
                    final snackBar = SnackBar(
                      content:
                          const Text('Puedes pedir información en rectoría'),
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {},
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                const Text("Llamada"),
              ]),
              Column(children: <Widget>[
                IconButton(
                  iconSize: 48,
                  isSelected: standardSelected3,
                  icon: Icon(Icons.directions, color: _iconColor3),
                  onPressed: () {
                    setState(() {
                      standardSelected3 = !standardSelected3;
                      if (standardSelected3 == false) {
                        _iconColor3 = Colors.cyan;
                      } else {
                        _iconColor3 = Colors.black;
                      }
                    });
                    final snackBar = SnackBar(
                      content: const Text(
                          'Se encuentra ubicado en Periférico Sur 8585'),
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {},
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                const Text("Ruta"),
              ])
            ],
          ),
          const SizedBox(
            height: 40,
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
