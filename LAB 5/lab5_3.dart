
import 'package:flutter/material.dart';

class lab5_3 extends StatefulWidget {
  const lab5_3({super.key});

  @override
  State<lab5_3> createState() => lab5_2State();
}

class lab5_2State extends State<lab5_3> {
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
                  if(!RegExp(r'/^[0-9A-Za-z]{6,16}$/').hasMatch(value) )
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
                  if(!RegExp('r[{8,}]').hasMatch(value) )
                  {
                    return "not valid password";
                  }
                  return null;
                },
              ),
              ElevatedButton(onPressed: (){
                if(_formkey.currentState!.validate()){
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
