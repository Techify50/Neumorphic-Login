import 'package:flutter/material.dart';
import 'package:neuromorphism/assignment/ui.dart';
import 'package:neuromorphism/glassmorphism/glssmorphism.dart';
import 'package:neuromorphism/logic/print_price.dart';
import 'package:neuromorphism/pink_LogIn/pink_LogIn.dart';
import 'package:neuromorphism/popup_button/pop_up.dart';
import 'package:neuromorphism/register/register.dart';

import 'neumorphism/keypad.dart';
import 'neumorphism/neumorphism_login/Login_s.dart';

main() {
  runApp(Neuromorphism());
}

class Neuromorphism extends StatelessWidget {
  const Neuromorphism({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn_S(),
    );
  }
}
