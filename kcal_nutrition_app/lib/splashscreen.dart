// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_midterm_project/homepage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 int currentPage=0;
 List<Map<String, String>> splashData = [

{
"text": "Eat Healthy",
"image": "assets/images/screen1.png",
"text1": "Maintaining good health should be \n the primary focus of everyone."
},

{
"text": "Healthy Recipes",
"image": "assets/images/screen2.png",
"text1": "Browse thousands of healthy\nrecipes around the world."
},

{
"text": "Track your Health",
"image": "assets/images/screen3.png",
"text1": "With amazing inbuilt tools you\n can track your progress."
}

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child: SizedBox(
      width: double.infinity,
      child: Column (
      children:  <Widget> [
        
        Expanded(
          flex: 5,
          child: PageView.builder(
            onPageChanged: (value){
              setState(() {
                currentPage=value;
              });
            },
            itemCount: splashData.length,
            itemBuilder: (context, index) => SplashContent(
            image: splashData[index]["image"].toString(),
            text:  splashData[index]["text"].toString(),
            text1:  splashData[index]["text1"].toString()),)),
        Expanded(
          flex: 2,
          child: Column(
            children: <Widget> [

            Row(
                children: List.generate(splashData.length, (index) => buildDot(index: index)),
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            Padding(padding: EdgeInsets.all(18)),
            SizedBox(
              width: 270,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF9385),
                shape: 
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))
                ),
                onPressed: (){
                Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (route) => false);
                }, 
                child: Text("Get Started", style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20))))),
            
            Padding(padding: EdgeInsets.all(16)),

           RichText (
            text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Already have An Account?',style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16))),
              TextSpan(
                  text: ' Log In',
                  style: TextStyle(color: Colors.green.shade200,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            ],
          ),
        ),
                
          
]))]))));}
        
        Container buildDot ({required int index}){
          return Container (
                margin: EdgeInsets.only(right: 5),
                height: 10,
                width: currentPage == index ? 20:6,
                decoration: BoxDecoration(
                  color: currentPage == index ? Color(0xFFFF9385) : Colors.pink.shade100,
                  borderRadius: BorderRadiusDirectional.circular(3)
                )

        

  );}}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, required this.text, required this.image, required this.text1,
  }) : super(key: key);
  final String text, image, text1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [

        SizedBox (
        height: 90.0,
        child: Text('kcal', style: GoogleFonts.nunito(
          textStyle: TextStyle(
          color: Colors.green.shade400,
          fontWeight: FontWeight.bold,
          fontSize: 30)))
          
        ),
       
        Image.asset(
         image,
         width: 300,
         height: 280,
         fit:BoxFit.fill 
        ),

        Padding(padding: EdgeInsets.all(4)), 

        Text(text, textAlign: TextAlign.center, style: GoogleFonts.nunito(
        textStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22))),

        Padding(padding: EdgeInsets.all(4)), 

        Text(text1, textAlign: TextAlign.center, style: GoogleFonts.nunito(
        textStyle: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.normal,
        fontSize: 16))), 

        
 
      ],
    );
  }
}
 