import 'package:flutter/material.dart';

class CallList extends StatelessWidget {
  CallList({super.key});

  List<Map> con = [
    {
    'name': 'adfa',
    'number':1234567890
    },
    {
      'name': 'adfa',
      'number':'1234567890'
    },
    {
      'name': 'adfa',
      'number':'1234567890'
    },
    {
      'name': 'adfa',
      'number':'1234567890'
    },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),

      body: ListView.builder(
          itemCount: con.length,
          itemBuilder: (context,index){
            Map data = con[index];
            return Card(
              child: ListTile(
                title: Text(data['name']),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  child: Text(data['name'][0]),
                ),
                subtitle: Text(data['number'].toString()),
              ),
            );
          },
      ),
    );
  }
}
