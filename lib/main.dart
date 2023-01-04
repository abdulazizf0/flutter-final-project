import 'package:flutter/material.dart';
import 'package:rejesterpag/Edit.dart';
import 'package:rejesterpag/Login.dart';
import 'package:rejesterpag/Mozonh.dart';
import 'package:rejesterpag/Register.dart';
import 'package:rejesterpag/Setting.dart';
import 'package:rejesterpag/Splash.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Edit();
  }
}
