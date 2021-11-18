// ignore_for_file: prefer_const_constructors

import 'favorites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List _title = ['Home','Search','Camera','Favorite','User',];

  final List _widgetOptions = [
    Text('Index1 : Home', style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))),
    Text('Index2 : Search', style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))),
    Text('Index3 : Camera', style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))),
    Favorites(),
    Text('Index5 : User', style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)))];

  void _onItemTapped(int index) {
    setState(() {_selectedIndex = index;});}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            _title[_selectedIndex],
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14)))),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: SizedBox(
              child: Icon(Icons.home),
              width: 38, height: 40),label: '',),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: Icon(Icons.search),
              width: 38, height: 40),label: '',),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 80,
                child: Icon(
                  IconlyBold.camera,
                  color: Colors.white)),
                width: 58,
                height: 40,),label: '',),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: Icon(IconlyBold.heart),
              width: 38, height: 40),
            label: '',),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: Icon(Icons.person),
              width: 38,height: 40),
            label: '',)],
            
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[200],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}