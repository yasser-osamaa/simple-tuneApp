import 'package:flutter/material.dart';
import 'package:tune_app/models/item_container.dart';
import 'package:tune_app/widgets/custom_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<Item> tunes = const [
    Item(
      sound: 'sounds/note1.wav',
      color: Color(0xffFC3F3B),
    ),
    Item(
      sound: 'sounds/note2.wav',
      color: Color(0xffFD9831),
    ),
    Item(
      sound: 'sounds/note3.wav',
      color: Color(0xffFDEB5E),
    ),
    Item(
      sound: 'sounds/note4.wav',
      color: Color(0xff32AF5A),
    ),
    Item(
      sound: 'sounds/note5.wav',
      color: Color(0xff009586),
    ),
    Item(
      sound: 'sounds/note6.wav',
      color: Color(0xff0096E7),
    ),
    Item(
      sound: 'sounds/note7.wav',
      color: Color(0xff641F69),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 0, // بتخلي الاب بار لازم في الاسكرين يعني مفوش شادو
        centerTitle: true,
        backgroundColor: const Color(0xff243139),
        title: const Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        // children: containers(),
        children:
            tunes.map((object) => CustomContainer(object: object)).toList(),
      ),
    );
  }

  // List<CustomContainer> containers() {
  //   List<CustomContainer> results = [];
  //   for (var item in list) {
  //     results.add(CustomContainer(object: item));
  //   }
  //   return results;
  // }
}
