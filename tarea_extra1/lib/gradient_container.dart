import 'package:flutter/material.dart';

const startAligment = Alignment.topCenter;
const endAligment = Alignment.bottomCenter;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.color1, this.color2, {super.key});

  const GradiantContainer.blue({super.key})
      : color1 = Colors.blue,
        color2 = Colors.white;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: startAligment,
                end: endAligment)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                alignment: AlignmentDirectional(0.00, 0.00),
                child: const Text(
                  'Hello World',
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                alignment: AlignmentDirectional(0.00, 0.00),
                child: const Text(
                  'Hello World 2',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Página 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Página 2'),
            ),
          ],
        ));
  }
}
