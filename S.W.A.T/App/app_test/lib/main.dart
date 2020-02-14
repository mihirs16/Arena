import 'package:flutter/material.dart';

// var green = 0xdd1fff8b;
// var red = 0xddff3045;

class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // final roundCorner = 11.5;
  // final heightCardBig = 200.0;
  // final heightCardSmall = 45.0;
  // final widthCard = 300.0;
  int ctr = 0;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Center( 
        child: Text(
          '$ctr'
        ),
      ),      
    );
  }
}

void main()
{
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage()
      ),
    ),
  );
}