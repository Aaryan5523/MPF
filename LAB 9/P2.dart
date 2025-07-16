import 'package:flutter/material.dart';
class qvoteapp extends StatefulWidget {
  const qvoteapp({super.key});

  @override
  State<qvoteapp> createState() => _qvoteappState();
}

class _qvoteappState extends State<qvoteapp> {
  Widget qvotecard({required String text,required String author}){
    return Card(
      child: ListTile(
        title: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        subtitle: Text(author,style: TextStyle(fontSize: 18,color: Colors.grey),),
        trailing: IconButton(onPressed: (){
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("copied to clipboard")));
        },
            icon: Icon(Icons.copy,color: Colors.red,)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Feedback Form"),
          backgroundColor: Colors.grey,
        ),
        body: Column(
            children: [
              qvotecard(text: "how wouid you desc your mood after using our product for first time",author: "MEOOOW "),
              qvotecard(text: "How wouid you rate this product",author: "MEOOOW"),
              qvotecard(text: "Your feedback",author: "MEOOOW"),
            ]
        ),
      ),
    );
  }
}