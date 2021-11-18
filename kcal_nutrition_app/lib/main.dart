// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:mobile_midterm_project/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KCAL',
      home: Welcome(),
    );
  }
}