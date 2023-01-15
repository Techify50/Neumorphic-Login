import 'package:flutter/material.dart';
import 'package:neuromorphism/pink_LogIn/pink_form.dart';
import 'package:neuromorphism/pink_LogIn/settings.dart';

class PinkDesign extends StatefulWidget {
  const PinkDesign({super.key});

  @override
  State<PinkDesign> createState() => _PinkDesignState();
}

class _PinkDesignState extends State<PinkDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1.8,
        backgroundColor: Color.fromARGB(255, 218, 58, 133),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Pink_Form(
                text: 'Name',
              ),
              Pink_Height(),
              Pink_Form(
                text: 'Number',
              ),
              Pink_Height(),
              Pink_Form(
                text: 'Email',
              ),
              Pink_Height(),
              Pink_Form(
                text: 'Password',
              ),
              Pink_Height(),
              Pink_Form(
                text: 'Confirm Password',
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 218, 58, 133),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    'Creat Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Text(
                    'By Creating an account You agree  ',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        Text(
                          'to the',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Terms of uses',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.5)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
