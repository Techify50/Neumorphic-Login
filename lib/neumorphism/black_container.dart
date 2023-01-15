import 'package:flutter/material.dart';

class BlackButton extends StatefulWidget {
  BlackButton({super.key});

  @override
  State<BlackButton> createState() => _BlackButtonState();
}

class _BlackButtonState extends State<BlackButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 40, 40, 40),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 0, 0, 0),
                offset: Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1),
            BoxShadow(
                color: Color.fromARGB(255, 58, 58, 58),
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1),
          ]),
      child: Icon(Icons.ring_volume_outlined),
    );
  }
}
