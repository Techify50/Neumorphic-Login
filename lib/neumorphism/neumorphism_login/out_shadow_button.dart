import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

class Buttonss_ extends StatefulWidget {
  Buttonss_({
    super.key,
  });

  @override
  State<Buttonss_> createState() => _Buttonss_State();
}

class _Buttonss_State extends State<Buttonss_> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    Offset s = isPressed ? Offset(5, 5) : Offset(7, 7);
    double blur = isPressed ? 2.0 : 12;
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFFdde2e8),
          boxShadow: [
            BoxShadow(
                offset: -s,
                color: Colors.grey,
                blurRadius: blur,
                inset: isPressed),
            BoxShadow(
                offset: s,
                color: Colors.white,
                blurRadius: blur,
                inset: isPressed),
          ],
        ),
        child: Center(
          child: Text(
            'LogIn',
            style: TextStyle(
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 71, 71, 71)),
          ),
        ),
      ),
    );
  }
}
