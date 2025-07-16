import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do list'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('To Do - 1'),
              trailing: Checkbox(value: true, onChanged: (selected){}),

            ),
            ListTile(
              title: Text('To Do - 2'),
              trailing: Checkbox(value: false, onChanged: (selected){}),

            ),
            ListTile(
              title: Text('To Do - 3'),
              trailing: Checkbox(value: false, onChanged: (selected){}),

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
    );
  }
}
