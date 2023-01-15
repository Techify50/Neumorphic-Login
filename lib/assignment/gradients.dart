import 'package:flutter/material.dart';

class Gradientss extends StatelessWidget {
  // Color g;
  // Color h;
  const Gradientss({
    super.key,

    // required this.g, required this.h
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 15, 121, 115),
              Color.fromARGB(255, 65, 223, 115)
            ]),
      ),
      child: Center(
          child: Text(
        'CREATE ACCOUNT',
        style: TextStyle(color: Colors.white, fontSize: 15),
      )),
    );
  }
}
