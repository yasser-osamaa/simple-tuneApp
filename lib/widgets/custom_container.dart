import 'package:flutter/material.dart';
import 'package:tune_app/models/item_container.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.object});
  final Item object;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: object.playSound,
        child: Container(
          color: object.color,
          //height: 50,
          //width: double.infinity,
        ),
      ),
    );
  }
}
