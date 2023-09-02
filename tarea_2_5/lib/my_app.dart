import 'package:flutter/material.dart';

/// Flutter code sample for [TextField].

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Botonesyotros(),
    );
  }
}

class Botonesyotros extends StatefulWidget {
  const Botonesyotros({super.key});

  @override
  State<Botonesyotros> createState() => _MainApp();
}

class _MainApp extends State<Botonesyotros> {
  //controladores
  var dineroController = TextEditingController();

  //Variables
  bool? genero;
  var gender = '';

  int redondoF = 0;

  var total = '';
  bool light = true;
  bool redondo = true;

  //Funciones
  void _setText() {
    setState(() {
      //funcion para el 20%
      if (gender == '20') {
        if (redondo == true) {
          double propina = double.parse(dineroController.text);
          propina = propina * 1.2;

          redondoF = propina.round();
          total = redondoF.toStringAsFixed(1);
        } else {
          double propina = double.parse(dineroController.text);
          propina = propina * 1.2;

          total = propina.toStringAsFixed(2);
        }
      }
      //funcion para el 18%
      if (gender == '18') {
        if (redondo == true) {
          double propina = double.parse(dineroController.text);
          propina = propina * 1.18;

          redondoF = propina.round();
          total = redondoF.toStringAsFixed(1);
        } else {
          double propina = double.parse(dineroController.text);
          propina = propina * 1.18;

          total = propina.toStringAsFixed(2);
        }
      }
      //funcion para el 15%
      if (gender == '15') {
        if (redondo == true) {
          double propina = double.parse(dineroController.text);
          propina = propina * 1.15;

          redondoF = propina.round();
          total = redondoF.toStringAsFixed(1);
        } else {
          double propina = double.parse(dineroController.text);
          propina = propina * 1.15;

          total = propina.toStringAsFixed(2);
        }
      }
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    dineroController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Tip Time',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 12),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    controller: dineroController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.home),
                        labelText: "Ingresa el costo total",
                        border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            const ListTile(
              title: Text(
                "¿Como estuvo el servicio? ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Column(
                children: [
                  Expanded(
                      child: Icon(
                    Icons.dinner_dining_sharp,
                    color: Colors.green,
                  ))
                ],
              ),
            ),
            RadioListTile(
              title: const Text("Amazing(20%)"),
              value: "20",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text("Good(18%)"),
              value: "18",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text("Okay(15%)"),
              value: "15",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            ListTile(
              leading: const Column(
                children: [
                  Expanded(
                      child: Icon(
                    Icons.credit_card,
                    color: Colors.green,
                  ))
                ],
              ),
              title: const Text(
                "Round up tip",
              ),
              trailing: Column(
                children: [
                  Expanded(
                    child: Switch(
                      // This bool value toggles the switch.
                      value: light,

                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          redondo = value;
                          light = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 23,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: _setText, child: const Text("Calcular")),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 234,
                    ),
                    Text('El total es de : \$$total'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
