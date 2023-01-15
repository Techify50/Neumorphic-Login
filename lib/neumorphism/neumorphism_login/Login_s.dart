import 'package:flutter/material.dart';
import 'package:neuromorphism/neumorphism/neumorphism_login/buttonss.dart';
import 'package:neuromorphism/neumorphism/neumorphism_login/out_shadow_button.dart';

class LogIn_S extends StatefulWidget {
  const LogIn_S({super.key});

  @override
  State<LogIn_S> createState() => _LogIn_SState();
}

class _LogIn_SState extends State<LogIn_S> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdde2e8),
      body: Center(
        child: Container(
          height: 700,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 115,
                width: 115,
                decoration: BoxDecoration(
                    color: Color(0xFFdde2e8),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(3, 3),
                          color: Color.fromARGB(255, 7, 7, 7).withOpacity(0.5),
                          blurRadius: 2),
                      BoxShadow(
                          offset: Offset(-3, -3),
                          color: Color.fromARGB(255, 255, 255, 255),
                          blurRadius: 2)
                    ]),
                child: Center(
                  child: Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(-3, -3),
                              color: Color.fromARGB(255, 44, 44, 44)
                                  .withOpacity(0.1),
                              blurRadius: 10),
                          BoxShadow(
                              offset: Offset(5, 5),
                              color: Color.fromARGB(120, 255, 255, 255)
                                  .withOpacity(0.5),
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.pinimg.com/564x/2d/af/4a/2daf4a491437a662a9cd1b221ed78eae.jpg'))),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Web Development',
                style: TextStyle(
                    fontFamily: 'Oxygen',
                    fontSize: 26,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Made easy!',
                style: TextStyle(
                    fontFamily: 'Oxygen',
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2,
                    color: Color.fromARGB(181, 0, 0, 0)),
              ),
              SizedBox(
                height: 30,
              ),
              Buttonss(
                name: 'username',
                c: Icon(Icons.person_outline_outlined),
                x: TextInputType.name,
              ),
              SizedBox(
                height: 20,
              ),
              Buttonss(
                name: 'password',
                c: Icon(Icons.lock_outline_rounded),
                x: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 25,
              ),
              Buttonss_(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 10),
                child: Row(
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w900,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 85, 85, 85)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
