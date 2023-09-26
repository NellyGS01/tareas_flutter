import 'package:flutter/material.dart';
import 'package:tarea_3_5/home_page.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({super.key, required this.lista});

  final Lista lista;
  bool standardSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(lista.titulo),
          actions: <Widget>[
            Builder(builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.star),
                isSelected: standardSelected,
                selectedIcon: const Icon(Icons.star_border),
                onPressed: () {
                  setState(() {
                    standardSelected = !standardSelected;
                  });
                  const snackBar = SnackBar(
                    content: Text('Se agrego a favoritos',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              );
            })
          ],
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Image.asset(
                'assets/images/bali2.jpg',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Ingredientes',
                style: TextStyle(fontSize: 25, color: Colors.orange),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Mantequilla en pomada 250 g',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const Text(
                'Azúcar 150 g',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const Text(
                'Huevo XL (o 1 M y una yema) 1',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const Text(
                'Harina de repostería 550 g',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const Text(
                'Esencia de vainilla 5 ml',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Steps',
                style: TextStyle(fontSize: 25, color: Colors.orange),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Batimos la mantequilla y el azúcar con unas varillas eléctricas. Añadimos la esencia de vainilla y el huevo, batiendo hasta integrar ambos. Añadimos la harina, poco a poco, primero con batidora y luego a mano sobre una superficie limpia. Estiramos sobre una lámina de papel sulfurizado o de horno dejando 1/2 cm de grosor',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Dejamos reposar en la nevera durante un mínimo de 30 minutos, mejor algo más de tiempo. Cortamos las galletas con un cortapastas, las pasamos a una bandeja cubierta con papel vegetal y las refrigeramos otros 30 minutos.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Precalentamos el horno a 180º C con calor arriba y abajo sin aire. Horneamos las galletas unos 10-12 minutos, o hasta que comiencen a dorarse. Transferimos las galletas a una rejilla metálica donde dejamos que se enfríen antes de consumir o decorar.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ));
  }

  void setState(Null Function() param0) {}
}
