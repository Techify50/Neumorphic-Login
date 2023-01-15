import 'package:flutter/material.dart';

class Logic extends StatefulWidget {
  const Logic({super.key});

  @override
  State<Logic> createState() => _LogicState();
}

class _LogicState extends State<Logic> {
  @override
  Widget build(BuildContext context) {
    int number = 0;
    return Scaffold(
      body: Column(children: [
        Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: Text('${number == 0 ? 0 : number}'),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          number++;
          print('$number');
        }),
      ),
    );
  }
}
