import 'package:flutter/material.dart';
import 'package:mpf/LAB%2016/page%202.dart';

class Page1  extends StatefulWidget {
  const Page1 ({super.key});

  @override
  State<Page1 > createState() => _Page1State();
}

class _Page1State extends State<Page1 > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page - 1'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Text('GO TO Page 2')
            )
          ],
        ),
      ),
    );
  }
}
