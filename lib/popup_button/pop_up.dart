import 'package:flutter/material.dart';

class POP_UP extends StatefulWidget {
  const POP_UP({super.key});

  @override
  State<POP_UP> createState() => _POP_UPState();
}

class _POP_UPState extends State<POP_UP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              enabled: true,
              //color: Colors.amber.shade300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              itemBuilder: (_) {
                return [
                  PopupMenuItem(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: ListTile(
                          leading: Icon(Icons.settings_outlined),
                          title: Text('setting')),
                    ),
                  ),
                  PopupMenuItem(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('setting'),
                    ),
                  ),
                  PopupMenuItem(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('setting'),
                    ),
                  ),
                ];
              })
        ],
      ),
    );
  }
}
