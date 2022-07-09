import 'package:flutter/material.dart';
import 'package:login_screen/Screens/loginScreen/login_Screen.dart';
import 'package:login_screen/Screens/signUpScreen/sign_up.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
