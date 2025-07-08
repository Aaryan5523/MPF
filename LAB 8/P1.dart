import 'package:flutter/material.dart';

class DemoCalc extends StatefulWidget {
  const DemoCalc({super.key});

  @override
  State<DemoCalc> createState() => _DemoCalcState();
}

class _DemoCalcState extends State<DemoCalc> {
  String displayOutput = "0";

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        displayOutput = "0";
      } else if (buttonText == "=") {
        displayOutput = "0";
      } else {
        if (displayOutput == "0") {
          displayOutput = buttonText;
        } else {
          displayOutput += buttonText;
        }
      }
    });
  }

  Widget calcButton(String text, {Color? color}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.white70,
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 24.0,color: Colors.black ,fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onButtonPressed(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Calculator'), centerTitle: true),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  displayOutput,
                  style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(height: 1.0, color: Colors.green[700]),

            Column(
              children: <Widget>[
                Row(children: <Widget>[calcButton("C", color: Colors.red)]),
                Row(
                  children: <Widget>[
                    calcButton("7"),
                    calcButton("8"),
                    calcButton("9"),
                    calcButton("*", color: Colors.grey),
                  ],
                ),
                Row(
                  children: <Widget>[
                    calcButton("4"),
                    calcButton("5"),
                    calcButton("6"),
                    calcButton("-", color: Colors.grey),
                  ],
                ),
                Row(
                  children: <Widget>[
                    calcButton("1"),
                    calcButton("2"),
                    calcButton("3"),
                    calcButton("+", color: Colors.grey),
                  ],
                ),
                Row(
                  children: <Widget>[
                    calcButton("0"),
                    calcButton("=", color: Colors.grey),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
