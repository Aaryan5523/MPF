import 'package:flutter/material.dart';

class TabViewDemo extends StatefulWidget {
  const TabViewDemo({super.key});

  @override
  State<TabViewDemo> createState() => _TabViewDemoState();
}

class _TabViewDemoState extends State<TabViewDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          title: Text('Tab View'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Home Page'),
                icon: Icon(Icons.home),
              ),
              Tab(
                child: Text('About Page'),
                icon: Icon(Icons.info),
              ),
              Tab(
                child: Text('Contact Page'),
                icon: Icon(Icons.contacts),
              ),
            ],
          ),
        ),
          body: TabBarView(children: [
            Container(
              child: Center(child: Text('Home Page' , style: TextStyle(fontSize: 30),)),
            ),
            Container(
              child: Center(child: Text('About Page' , style: TextStyle(fontSize: 30),)),
            ),
            Container(
              child: Center(child: Text('Contact Page' , style: TextStyle(fontSize: 30),)),
            ),
          ],),
        )
    );
  }
}
