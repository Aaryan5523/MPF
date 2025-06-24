
import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => ThirdState();
}

class ThirdState extends State<Third> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Form(
        key: _formkey,
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller:usercontroller,
                validator: (value){
                  if(value== null || value.isEmpty)
                  {
                    return "username is required";
                  }
                  if(!RegExp(r'^[0-9A-Za-z]{6,16}$').hasMatch(value) )
                  {
                    return "not valid username";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller:passcontroller,
                validator: (value){
                  if(value== null || value.isEmpty)
                  {
                    return "password is required";
                  }
                  if (!RegExp(r'[A-Z]').hasMatch(value))
                  {
                    return "not valid password";
                  }
                  return null;
                },
              ),
              ElevatedButton(onPressed: (){
                if(_formkey.currentState!.validate()){
                  print('Success');
                  _formkey.currentState!.reset();
                }

              }, child:  Text("submit")),
            ],
          ),
        ),
      ),
    );
  }
}