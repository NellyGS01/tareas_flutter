import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  ItemActividad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/day1.jpg'),
                        fit: BoxFit.cover)),
              ),
              const Text("Day 1", style: TextStyle(fontSize: 11)),
              const Text("Templo de Tanah Lot"),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/day2.jpg'),
                        fit: BoxFit.cover)),
              ),
              const Text("Day 2", style: TextStyle(fontSize: 11)),
              Text("Uluwatu Temple"),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/day3.jpg'),
                        fit: BoxFit.cover)),
              ),
              const Text("Day 3", style: TextStyle(fontSize: 11)),
              const Text("Monkey Sanctuary"),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/day4.jpg'),
                        fit: BoxFit.cover)),
              ),
              const Text("Day 4", style: TextStyle(fontSize: 11)),
              const Text("Pura Ulun "),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/day5.jpg'),
                        fit: BoxFit.cover)),
              ),
              const Text("Day 5", style: TextStyle(fontSize: 11)),
              const Text("Templo de Besakih"),
            ],
          ),
        ],
      ),
    );
  }
}
