import 'package:flutter/material.dart';

//pagina2

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PÁGINA 3"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/cardpage'),
                child: const Text("Card page"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("	(=`ω´=)"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("(；￣Д￣)"),
              ),
            ]),
            Stack(
              fit: StackFit.expand,
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
                // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              ],
            )
          ],
        ));
  }
}
