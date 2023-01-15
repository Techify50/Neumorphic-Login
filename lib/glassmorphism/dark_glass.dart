import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'glssmorphism.dart';

class DarkGlass extends StatefulWidget {
  const DarkGlass({super.key});

  @override
  State<DarkGlass> createState() => _DarkGlassState();
}

class _DarkGlassState extends State<DarkGlass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
            body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://i.pinimg.com/564x/f5/a1/cc/f5a1ccf10d271ccaa536f411a330101d.jpg')),
          ),
          child: Center(
              child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => Glass()));
            },
            child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 13,
                        spreadRadius: 10,
                        color: Color.fromARGB(255, 48, 48, 48).withOpacity(0.1))
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          border: Border.all(
                              width: 1.5,
                              color: Colors.white.withOpacity(0.4))),
                      child: Icon(
                        Icons.brightness_1_outlined,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ),
                )),
          )),
        )));
  }
}
