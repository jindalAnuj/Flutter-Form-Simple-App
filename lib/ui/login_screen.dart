import 'package:flutter/material.dart';
import 'mixins/validation_mixins.dart';
class LoginScreen extends StatefulWidget {
  @override
  LoginSreenState createState() {
    return LoginSreenState();
  }
}

class LoginSreenState extends State<LoginScreen> with ValidationMixins {
  String email = '';
  String password = '';
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passField(),
            Container(
              margin: EdgeInsets.only(top: 25.0),
            ),
            sumbitButton()
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      validator: validateEmail,
      onSaved: (String value) {
        if (value != null) email = value;
      },
      decoration: InputDecoration(
          labelText: 'Email Address', hintText: 'Your@example.com'),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passField() {
    return TextFormField(
      validator:validatePassword,
      decoration: InputDecoration(
          labelText: 'Password', hintText: 'Enter Your Password'),
      obscureText: true,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget sumbitButton() {
    return RaisedButton(
      child: Text('Login'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('post data to API $email and $password');
        }
      },
      color: Colors.amber,
    );
  }
}
