import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.onPress});

  final Widget? cardChild;
  final Color colour;
  final void Function() ? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(

        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
        child: cardChild,
      ),
      onTap: onPress,
    );
  }
}
