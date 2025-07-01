import 'package:flutter/material.dart';

class pract2 extends StatefulWidget {
  const pract2({super.key});

  @override
  State<pract2> createState() => _pract2State();
}

class _pract2State extends State<pract2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding:const EdgeInsets.all(8.0),
        child:Container(
          child:Stack(
            children: [
              Image.asset(height:400,width:400,"asset/demo2.png",fit: BoxFit.cover,),
              Positioned(child:Text("Hello",
                style:TextStyle(color:Colors.white,fontSize:80),
              ),
                right:30,
                bottom:30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
