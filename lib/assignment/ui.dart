import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neuromorphism/assignment/form.dart';
import 'package:neuromorphism/assignment/gradients.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/abc.jpeg'))),
        child: Center(
          child: Container(
            height: 750,
            width: 400,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 15,
                  spreadRadius: 2)
            ], color: Colors.white, borderRadius: BorderRadius.circular(35)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 60),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 30, color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Feilds(x: 'Name'),
                      SizedBox(
                        height: 8,
                      ),
                      Feilds(x: 'Number'),
                      SizedBox(
                        height: 8,
                      ),
                      Feilds(x: 'Email'),
                      SizedBox(
                        height: 8,
                      ),
                      Feilds(x: 'Password'),
                      SizedBox(
                        height: 8,
                      ),
                      Feilds(x: 'Confirm Pasword'),
                      SizedBox(
                        height: 15,
                      ),
                      Gradientss(),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Text('By Creating an account You agree  '),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 90),
                            child: Row(
                              children: [
                                Text('to the'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Terms of uses',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
