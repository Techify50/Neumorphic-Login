import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

class Buttonss extends StatelessWidget {
  String name;
  Icon c;
  TextInputType x;
  Buttonss({super.key, required this.name, required this.c, required this.x});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFdde2e8),
        boxShadow: [
          BoxShadow(
              offset: Offset(5, 5),
              color: Colors.grey,
              blurRadius: 3,
              inset: true),
          BoxShadow(
              offset: Offset(-5, -5),
              color: Colors.white,
              blurRadius: 3,
              inset: true),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 20),
          child: TextFormField(
              keyboardType: x,
              decoration: InputDecoration(
                prefixIcon: c,
                contentPadding: EdgeInsets.only(left: 40, top: 14),
                hintText: name,
                hintStyle: TextStyle(
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.w900,
                    color: Colors.grey),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hoverColor: Colors.amber,
                focusColor: Colors.pink,
                enabled: true,
                prefixStyle: TextStyle(
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.w900,
                    color: Colors.grey),
              )),
        ),
      ),
    );
  }
}
