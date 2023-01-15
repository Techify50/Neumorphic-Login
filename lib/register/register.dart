import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:neuromorphism/neumorphism/keypad.dart';
import 'package:neuromorphism/neumorphism/white_container.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //List<String> _countryCodes = ['+91', '+23', '+92'];
  var e = 10.0;
  bool showhide = true;
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: 1000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/abstract-geometric-background-with-low-poly-design_1048-8354.jpg?w=1380&t=st=1673245517~exp=1673246117~hmac=71c257938511588852946c2a1000439f8e55afe20e5c6c9b8081a471b4f38a6f'))),
              child: Container(
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 80, sigmaY: 20),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        // color: Colors.white.withOpacity(0.2),
                        height: 800,
                        width: 400,
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(5, 5),
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 10),
                                BoxShadow(
                                    offset: Offset(-5, -5),
                                    color: Color.fromARGB(255, 255, 255, 255)
                                        .withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white.withOpacity(0.1),
                              border: Border.all(
                                  width: 1.2,
                                  color: Colors.white.withOpacity(0.5))),

                          // height: 400,
                          // width: 200,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Text(
                                  'Register',
                                  style: TextStyle(fontSize: 25),
                                ),
                                //
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'User Name',
                                      textAlign: TextAlign.left,
                                    ),
                                    TextFormField(
                                        enabled: true,
                                        decoration: InputDecoration(
                                            fillColor:
                                                Colors.white.withOpacity(0.1),
                                            hintText: 'John ',
                                            // labelText: 'User Name',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            // label: Text('User'),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(1.0))))),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'phone Number',
                                    ),

                                    Container(
                                      padding: EdgeInsets.all(5),
                                      height: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                Colors.black.withOpacity(0.3)),
                                      ),
                                      child: InternationalPhoneNumberInput(
                                        onInputChanged: (value) {},
                                        textStyle: TextStyle(fontSize: 14),
                                        inputBorder: InputBorder.none,
                                      ),
                                    ),

                                    // TextField(
                                    //     keyboardType: TextInputType.phone,
                                    //     decoration: InputDecoration(
                                    //         fillColor:
                                    //             Colors.white.withOpacity(0.1),
                                    //         hintText: '-----------',
                                    //         labelText: 'Phone Number',
                                    //         labelStyle:
                                    //             TextStyle(color: Colors.black),

                                    //         // label: Text('User'),
                                    //         border: OutlineInputBorder(
                                    //             borderRadius: BorderRadius.all(
                                    //                 Radius.circular(1.0))))),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Email',
                                    ),
                                    TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                            fillColor:
                                                Colors.white.withOpacity(0.1),
                                            hintText: 'abc@gmail.com ',
                                            // labelText: 'Email',
                                            labelStyle:
                                                TextStyle(color: Colors.black),

                                            // label: Text('User'),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(1.0))))),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Password',
                                    ),
                                    TextField(
                                        keyboardType: TextInputType.number,
                                        obscureText: showhide,
                                        decoration: InputDecoration(
                                            fillColor:
                                                Colors.white.withOpacity(0.1),
                                            hintText: '******** ',
                                            // labelText: 'Password',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            suffixIcon: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  showhide = !showhide;
                                                });
                                                kHoverTapSlop;
                                              },
                                              child: Icon(showhide
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined),
                                            ),

                                            // label: Text('User'),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(1.0))))),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Confirm Password',
                                    ),
                                    TextFormField(
                                        keyboardType: TextInputType.number,
                                        obscureText: hide,
                                        decoration: InputDecoration(
                                            fillColor:
                                                Colors.white.withOpacity(0.1),
                                            hintText: '******** ',
                                            // labelText: ' Confirm Password',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            suffixIcon: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  hide = !hide;
                                                });
                                              },
                                              child: Icon(hide
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined),
                                            ),
                                            // label: Text('User'),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(1.0))))),

                                    SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onFocusChange: (value) => Colors.black,
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Keypad()));
                                    },
                                    child: Container(
                                        height: 40,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            border: Border.all(
                                                width: 1.2,
                                                color: Colors.white
                                                    .withOpacity(0.5))),
                                        child: Center(
                                          child: Text(
                                            'Submit',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('already have an account?   '),
                                    Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 26, 112, 178)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
