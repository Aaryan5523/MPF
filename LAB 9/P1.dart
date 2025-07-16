import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback form"),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("""how wouid you desc your mood after \n using our product for first time""",
              style:
              TextStyle(fontSize: 20),),
            SizedBox(
              height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button(
                  child: Icon(Icons.sentiment_satisfied_alt),
                  onpressed: (){},
                  color: Colors.green,


                ),
                button(
                    child: Icon(Icons.sentiment_neutral_outlined),
                    onpressed: (){},
                    color: Colors.blue

                ),
                button(
                    child: Icon(Icons.sentiment_dissatisfied_outlined),
                    onpressed: (){},
                    color: Colors.red
                )

              ],
            ),
            SizedBox(height: 30,),
            Text("How wouid you rate this product",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button(
                  child: Text('1'),
                  onpressed: (){},
                  color: Colors.white,
                ),
                button(
                  child: Text('2'),
                  onpressed: (){},
                  color: Colors.white,
                ),
                button(
                  child: Text('3'),
                  onpressed: (){},
                  color: Colors.white,
                ),
                button(
                  child: Text('4'),
                  onpressed: (){},
                  color: Colors.white,
                ),
                button(
                  child: Text('5'),
                  onpressed: (){},
                  color: Colors.white,
                ),

              ],
            ),
            SizedBox(height: 30,),
            Text(
              "your Feedback:",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                )
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success")));
            },
              child: Text("submit"),
            ),

          ],
        ),
      ),
    );
  }
  ElevatedButton button({child,onpressed,color}){
    return ElevatedButton(onPressed: onpressed,
      child: child,
      style: IconButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.all(15),
          shape: CircleBorder()
      ),);

  }
}