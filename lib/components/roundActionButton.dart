import 'package:flutter/material.dart';

class RoundActioNButton extends StatelessWidget {
  RoundActioNButton({required this.icon, required this.onpressed});
  final IconData icon;
  final void Function() onpressed;
  int k = 0;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onpressed,
      child: Icon(icon),
    );
  }
}
