import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts/screens/welcome_screen.dart'; // Adjust the path accordingly

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: WelcomeScreen(),
    );
  }
}
