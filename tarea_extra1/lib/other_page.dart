import 'package:flutter/material.dart';
import 'package:tarea_extra1/gradient_container.dart';
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
        title: const Text("PÁGINA 2"),
      ),
      body: GradiantContainer.blue(),
    );
  }
}
