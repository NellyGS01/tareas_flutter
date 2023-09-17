import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("INTRO PAGE"),
        ),
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: SizedBox(
                child: Text(
                  'Bienvenidos',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/bali.jpg'),
                      fit: BoxFit.cover)),
            ),
          ],
        )));
  }
}
