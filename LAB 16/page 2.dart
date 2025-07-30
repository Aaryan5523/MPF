import 'package:flutter/material.dart';

class Page2  extends StatefulWidget {
  const Page2 ({super.key});

  @override
  State<Page2 > createState() => _Page2State();
}

class _Page2State extends State<Page2 > {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Page 2'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Page - 2'),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('GO TO Page 1')
          )
        ],
      ),
    ),
  );
}
}
