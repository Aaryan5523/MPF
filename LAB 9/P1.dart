import 'package:flutter/material.dart';
class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Feedback Form"),
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Center(
                child: Text("how wouid you desc your mood after \n using our product for first time",
                  style: TextStyle(fontSize: 20),),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.sentiment_satisfied_alt,color: Colors.green,size: 20,),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: EdgeInsets.all(15)
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.sentiment_neutral_outlined,color: Colors.brown,size: 20,),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: EdgeInsets.all(15)
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.sentiment_dissatisfied_outlined,color: Colors.red,size: 20,),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: EdgeInsets.all(15)
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text("How wouid you rate this product",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(text: "1"),
                  button(text: "2"),
                  button(text: "3"),
                  button(text: "4"),
                  button(text: "5"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Your feedback"),
              ),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("submit"))
            ],
          ),
        ),
      ),
    );
  }
  ElevatedButton button({required String text,})
  {
    return ElevatedButton(onPressed: (){},
      child: Text(text,style: TextStyle(fontSize: 20),),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: Colors.grey[300],
          padding: EdgeInsets.all(10)
      ),
    );
  }
}