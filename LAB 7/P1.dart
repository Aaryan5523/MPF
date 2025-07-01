import 'package:flutter/material.dart';

class pract1 extends StatefulWidget {
  const pract1({super.key});

  @override
  State<pract1> createState() => _pract1State();
}

class _pract1State extends State<pract1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding:const EdgeInsets.all(8.0),
        child:Container(
          child:Column(
            children: [
              Image.asset(height:600,width:600,"asset/demo2.png")
            ],
          ),
        ),
      ),
    );
  }
}
