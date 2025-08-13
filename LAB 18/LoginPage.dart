import 'package:flutter/material.dart';
import 'package:mpf/LAB%2018/student_helper_db.dart';

import '../LAB 18/student_model.dart';



class StudentForm extends StatefulWidget {
  const StudentForm({super.key});

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {

  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Form'),
      ),

      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                // Name
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty ) {
                      return 'Please enter your name';
                    }
                  },
                ),
                SizedBox(height: 15,),

                // Password
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty ) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6){
                      return 'Password should be at least 6 characters';
                    }
                  },
                ),
                SizedBox(height: 15,),

                ElevatedButton(onPressed: () async {
                  if (_formKey.currentState!.validate()){
                    StudentHelper studentHelper = StudentHelper();

                    bool isLoggedIn = await studentHelper.login(
                      nameController.text,
                      passwordController.text,
                    );
                  }
                },child: Text('Submit'),)

              ],
            )
        ),
      ),
    );
  }
}
