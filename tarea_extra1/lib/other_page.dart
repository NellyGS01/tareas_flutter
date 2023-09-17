import 'package:flutter/material.dart';
//Pagina3

const startAligment = Alignment.topCenter;
const endAligment = Alignment.bottomCenter;

class OtherPage extends StatefulWidget {
  const OtherPage({super.key});
  @override
  State<OtherPage> createState() => _HomePageState();
}

class _HomePageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTHER PAGE"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: startAligment,
                end: endAligment)),
      ),
    );
  }
}
