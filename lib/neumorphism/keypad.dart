import 'package:flutter/material.dart';

import 'black_keypad.dart';
import 'colors.dart';

class Keypad extends StatefulWidget {
  const Keypad({super.key});

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 207, 207, 207),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 500,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 228, 228),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 24, 24, 24),
                                offset: Offset(5, 5),
                                blurRadius: 10,
                                spreadRadius: 1),
                            BoxShadow(
                                color: Color.fromARGB(255, 255, 255, 255),
                                offset: Offset(-5, -5),
                                blurRadius: 20,
                                spreadRadius: 1),
                          ]),
                      child: Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://i.pinimg.com/564x/ec/82/02/ec820240122640c2ca9c9d8ea106ee55.jpg')),
                            color: Color.fromARGB(255, 230, 228, 228),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 24, 24, 24),
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                  spreadRadius: 1),
                              BoxShadow(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  offset: Offset(-5, -5),
                                  blurRadius: 20,
                                  spreadRadius: 1),
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BlackMode()));
                },
                child: Container(
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 207, 207, 207),
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
                    Icons.light_mode_outlined,
                    color: black_color,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
