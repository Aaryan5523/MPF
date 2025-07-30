import 'package:flutter/material.dart';

class pract14_1 extends StatelessWidget {
  const pract14_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.blue,
        centerTitle:true,
        title:Text(
          "3D Page view",
          style:TextStyle(fontSize:30,fontWeight:FontWeight.bold),
        ),
      ),
      body:PageView(
        controller:PageController(
          initialPage:1,
          viewportFraction:0.75,
        ),
        scrollDirection:Axis.horizontal,
        children: [
          buildpage("Red",Colors.red),
          buildpage("Blue",Colors.blue),
          buildpage("Green",Colors.green),
          buildpage("Brown",Colors.brown),
          buildpage("Pink",Colors.pink),
          buildpage("purple",Colors.purple),
          buildpage("Grey",Colors.grey),
          buildpage("BlueGrey",Colors.blueGrey),
        ],
      ),
    );
  }
}
Widget buildpage(String title,Color color)
{
  return Padding(
    padding:EdgeInsets.all(80),
    child: SizedBox(
      height:25,
      width:25,
      child: Card(
        color:color,
        margin:EdgeInsets.all(20),
        elevation:10,
        child:Center(child: Text(title,style:TextStyle(fontWeight:FontWeight.bold,fontSize:20,color:Colors.black),)),
      ),
    ),
  );
}
