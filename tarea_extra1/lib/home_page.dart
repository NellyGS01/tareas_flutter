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
                onPressed: () {},
                child: const Text("(シ_ _)シ"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("	(=`ω´=)"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("(；￣Д￣)"),
              ),
            ])
          ],
        ));
  }
}
