import 'package:flutter/material.dart';

//pagina2

class CardPage extends StatefulWidget {
  const CardPage({super.key});
  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CARD PAGE"),
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
