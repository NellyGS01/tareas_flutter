import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("INTRO PAGE"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: SizedBox(
                child: Text('Bienvenidos', style: TextStyle(fontSize: 35)),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage('assets/image/dart1.jpg'),
                    )),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: SizedBox(
                height: 40,
                child: Text('Bienvenidos', style: TextStyle(fontSize: 20)),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Ingrese Datos'),
                      content: TextField(
                        onChanged: (value) {},
                        //controller: _textFieldController,
                        decoration:
                            const InputDecoration(hintText: "Ingrese palabra"),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/otherpage'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                  child: const Text('Página 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: const Text("Página 3"),
                ),
              ],
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/bali.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
