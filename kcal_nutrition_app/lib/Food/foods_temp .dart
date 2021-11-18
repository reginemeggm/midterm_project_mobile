// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:mobile_midterm_project/Food/foods_info.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodsTemplate extends StatefulWidget {
  const FoodsTemplate({Key? key, required this.passedIndex}) : super(key: key);

  final int passedIndex;

  @override
  _FoodsTemplateState createState() => _FoodsTemplateState();}

class _FoodsTemplateState extends State<FoodsTemplate> {
  List listFood = FoodUtils.getFoodData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Foods', style: GoogleFonts.nunito(textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16)))),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
            buildGridItem(widget.passedIndex),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Text(
                listFood[widget.passedIndex].foodDesc1,
                style: GoogleFonts.nunito(textStyle:TextStyle(
                  fontSize:15,
                  color: Colors.grey.shade500)))),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Text(
                listFood[widget.passedIndex].foodDesc2,
                style: GoogleFonts.nunito(textStyle:TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade500)))),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gallery:', style: GoogleFonts.nunito(textStyle:TextStyle(
                      fontSize: 18,
                      color: Colors.black87))),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                          child: Image.asset(
                            listFood[widget.passedIndex].imgPath1,
                            width: 150,
                            height: 250,
                            fit: BoxFit.cover))),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                          child: Image.asset(
                            listFood[widget.passedIndex].imgPath2,
                            width: 150,
                            height: 250,
                            fit: BoxFit.cover)))])]))])),

                floatingActionButton: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    fixedSize: const Size(240, 60),
                    primary:  Color(0xFFFF9385),
                    shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18))),
                    onPressed: () {
              // ignore: avoid_print
                    print('Add to Favorite');},

                  child: Text('Add to favorite', style: GoogleFonts.nunito(textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23))))),

                floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);}

  Widget buildGridItem(int index) => Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow[50],
            borderRadius: BorderRadius.circular(15),
          ),
          height: 80,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(listFood[index].iconPath),
                  width: 50,
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listFood[index].foodname,
                        style: GoogleFonts.nunito(textStyle:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade300
                        )),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Alternative Names: " + listFood[index].altName,
                        style: GoogleFonts.nunito(textStyle:TextStyle(
                          fontSize: 13)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}