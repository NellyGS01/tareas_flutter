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

class _MainApp extends State<Botonesyotros> {
  var dineroController = TextEditingController();
  bool? genero;

  var total = '';

  //final String _15 = '''Tienes que pagar esto de propina con el 15%''';

  void _setText() {
    setState(() {
      double propina = double.parse(dineroController.text);
      propina = propina * 2;

      total = propina.toString();
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
        backgroundColor: const Color.fromARGB(255, 17, 129, 19),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      genero = false;
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.male,
                      color: genero == false ? Colors.indigo : Colors.grey,
                    ))
              ],
            ),
            TextField(
              controller: dineroController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  icon: Icon(Icons.home),
                  labelText: "Ingresa el costo total",
                  border: OutlineInputBorder()),
            ),
            MaterialButton(onPressed: _setText, child: const Text("Calcular")),
            Text(total)
          ],
        ),
      ),
    );
  }
}
