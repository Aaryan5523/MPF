import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text('TextField Example'),
),
body: MyHomePage(),
),
);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final TextEditingController _controller = TextEditingController();

void _printInputValue() {
print(_controller.text);
}

@override
Widget build(BuildContext context) {
return Column(
children: <Widget>[
TextField(
controller: _controller,
decoration: InputDecoration(
labelText: 'Enter something',
),
),
ElevatedButton(
onPressed: _printInputValue,
child: Text('Print Input'),
),
],
);
}
}
