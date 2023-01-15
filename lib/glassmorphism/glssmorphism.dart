import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'dark_glass.dart';

class Glass extends StatefulWidget {
  const Glass({super.key});

  @override
  State<Glass> createState() => _GlassState();
}

class _GlassState extends State<Glass> {
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
                    'https://i.pinimg.com/564x/0d/5e/5b/0d5e5b689cbf0d47a3f35ccbc6886e69.jpg')),
          ),
          child: Center(
              child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => DarkGlass()));
            },
            child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 16,
                        spreadRadius: 16,
                        color: Colors.black.withOpacity(0.2))
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          border: Border.all(
                              width: 1.5,
                              color: Colors.white.withOpacity(0.7))),
                      child: Icon(
                        Icons.track_changes_outlined,
                        color: Colors.white.withOpacity(1),
                      ),
                    ),
                  ),
                )),
          )),
        )));
  }
}
