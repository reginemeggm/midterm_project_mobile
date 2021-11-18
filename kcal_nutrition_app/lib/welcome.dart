// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_midterm_project/splashscreen.dart';
import 'dart:async';



class Welcome extends StatefulWidget {
  const Welcome({ Key? key }) : super(key: key);
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
  super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => SplashScreen()
     )));}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/kcalbg.png'),
                  fit: BoxFit.fitHeight),
                  color: Colors.green.shade400),

          
        child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(bottom: 320.0)),
          Align(alignment: Alignment.center),
          Expanded(
            flex: 2,
              child: Text('kcal', style: GoogleFonts.nunito(
                textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 54 )
                ))),

          Expanded(
              child: Text('ZUAMICA', style: GoogleFonts.nunito(
                textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 20 )
                ))),]))));}}