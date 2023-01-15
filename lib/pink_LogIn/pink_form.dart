import 'package:flutter/material.dart';

class Pink_Form extends StatelessWidget {
  String text;
  Pink_Form({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color.fromARGB(255, 0, 0, 0),
      cursorHeight: 30,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        //hoverColor: Colors.amber,
        //filled: true,
        //fillColor: Color.fromARGB(255, 218, 58, 133),
        //focusColor: Colors.amber,

        //  border: OutlineInputBorder(borderSide: BorderSide.lerp(1, , 3)),
        hintText: text,
        hintStyle: TextStyle(
            color: Color.fromARGB(255, 218, 58, 133),
            fontSize: 16,
            fontWeight: FontWeight.w800),
        contentPadding: EdgeInsets.only(
          bottom: 20,
        ),
      ),
    );
  }
}
