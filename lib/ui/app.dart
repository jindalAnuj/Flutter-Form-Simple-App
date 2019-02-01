import 'package:flutter/material.dart';
import 'package:login_stateful/ui/login_screen.dart';

class App extends StatelessWidget{ 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      title: "Log Me In",
      home: Scaffold(
  
        body: LoginScreen() ,
      ),
    );
  }

} 