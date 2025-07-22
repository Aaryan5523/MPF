import 'package:flutter/material.dart';

class ListDemo extends StatefulWidget {
  const ListDemo({super.key});

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  List<int> numbers = [6697,2202,3232,4343,5555,5757,4949,5578,1245,1234,1567,1678,1897,1333,1222,1444,1555,1666,1777,1888,1999
    ,1010,1919,1818,1717,2626,2727,2828,2929,2525,2526];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
            children:
            numbers.map( (number){
              return ListTile(
                title: Text(number.toString()),
              );
            }).toList()

        ),
      ),
    );
  }
}
