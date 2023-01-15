import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  get black_color => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 230, 228, 228),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1),
          ]),
      child: Icon(
        Icons.ring_volume_outlined,
        color: black_color,
      ),
    );
  }
}
