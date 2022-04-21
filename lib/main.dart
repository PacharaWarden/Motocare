// ignore: unused_import
import 'package:changrode/page1/Home.dart';
import 'package:changrode/page1/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), home: const LoginScreen());
  }
}
