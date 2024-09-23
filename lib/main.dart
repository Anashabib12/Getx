import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/login/signup/login_screen.dart';
import 'package:getx/screens/screen1.dart';
import 'package:getx/screens/screen2.dart';
import 'package:getx/screens/screen3.dart';
import 'package:getx/screens/screen4.dart';
import 'package:getx/screens/screen5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: LoginScreen());
  }
}
