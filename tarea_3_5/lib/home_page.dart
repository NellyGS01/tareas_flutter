import 'package:flutter/material.dart';
import 'package:tarea_3_5/info_page.dart';

class Lista {
  final String titulo;
  final String contenido;
  Lista(this.titulo, this.contenido);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.porhacer});

  final List<Lista> porhacer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('Quick and Easy'),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: porhacer.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                GestureDetector(
                    child: Image.asset(
                      'assets/images/bali2.jpg',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => InfoScreen(
                                    lista: porhacer[index],
                                  ))));
                    }),
                Positioned(
                    bottom: 0,
                    top: 180,
                    child: Container(
                        width: 410,
                        color: Colors.black54,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              (porhacer[index].titulo),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.access_time_outlined,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '20 mins',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.account_balance_wallet_outlined,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Simple',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.money,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Affordable',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                          ],
                        ))),
              ],
            );

            //ListTile(
            //leading: const Icon(Icons.ac_unit),
            //title: Text('hola'),
            //title: (Text(porhacer[index].titulo)),
            /*onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => InfoScreen(
                              lista: porhacer[index],
                            ))));
              },*/
            //);
          },
        ));
  }
}
