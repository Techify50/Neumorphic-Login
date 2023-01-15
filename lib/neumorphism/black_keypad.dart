import 'package:flutter/material.dart';
import 'package:neuromorphism/neumorphism/keypad.dart';

import 'colors.dart';

class BlackMode extends StatefulWidget {
  const BlackMode({super.key});

  @override
  State<BlackMode> createState() => _BlackModeState();
}

class _BlackModeState extends State<BlackMode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 40, 40, 40),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 450,
                      width: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/37/1f/6e/371f6ee572b899f972b1833005217d2b.jpg')),
                          color: Color.fromARGB(255, 230, 228, 228),
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
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Keypad())),
                child: Container(
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
                  child: Icon(
                    Icons.dark_mode_outlined,
                    color: white_color,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
