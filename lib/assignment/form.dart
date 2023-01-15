import 'package:flutter/material.dart';

class Feilds extends StatelessWidget {
  String x;
  Feilds({super.key, required this.x});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 30),
          hintText: x,
          hintStyle:
              TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 16),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          focusColor: Colors.black.withOpacity(0.2),
          fillColor: Color.fromARGB(255, 155, 152, 152).withOpacity(0.3),
          // enabledBorder: InputBorder(borderSide: BorderSide.none),
          // focusedBorder: InputBorder.none,
          //  disabledBorder: InputBorder.none,
          filled: true),
    );
  }
}
