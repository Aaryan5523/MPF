import 'package:flutter/material.dart';

class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World App'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 24,
            ),
          ),
        ),
      );
  }
}
