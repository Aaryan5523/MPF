import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: LoginScreen(),
);
}
}

class LoginScreen extends StatefulWidget {
@override
_LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
final _formKey = GlobalKey<FormState>();
String? email;
String? password;

void _validateInputs() {
if (_formKey.currentState!.validate()) {
// Process data
}
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('Login')),
body: Padding(
padding: EdgeInsets.all(16.0),
child: Form(
key: _formKey,
child: Column(
children: <Widget>[
TextFormField(
decoration: InputDecoration(labelText: 'Email'),
validator: (value) {
if (value == null || value.isEmpty) {
return 'Please enter your email';
}
final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
if (!regex.hasMatch(value)) {
return 'Please enter a valid email';
}
return null;
},
onSaved: (value) => email = value,
),
TextFormField(
decoration: InputDecoration(labelText: 'Password'),
obscureText: true,
validator: (value) {
if (value == null || value.isEmpty) {
return 'Please enter your password';
}
if (value.length < 6) {
return 'Password must be at least 6 characters';
}
return null;
},
onSaved: (value) => password = value,
),
SizedBox(height: 20),
ElevatedButton(
onPressed: _validateInputs,
child: Text('Login'),
),
],
),
),
),
);
}
}
