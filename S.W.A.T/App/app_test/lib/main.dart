import 'package:flutter/material.dart';

var green = 0xdd1fff8b;
var red = 0xddff3045;

class HomePage extends StatelessWidget
{
  final roundCorner = 11.5;
  final heightCardBig = 200.0;
  final heightCardSmall = 45.0;
  final widthCard = 300.0;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(35),
              height: 62.0+(35*2),
              width: 62.0+(35*2),
              //color: Colors.grey,
              child: Image(
                image: AssetImage('assets/Manchester_City_FC_badge.png'),
                )
            ),
            Container(
              child: Card(
                child: Container(
                  child: Center(
                    child: Text(
                      '0 - 0',
                      style: TextStyle(fontSize: 50.0),
                      ),
                  ),
                  height: heightCardBig,
                  width: widthCard,
                ),
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Color(green),
              ),
            ),
            Container(
              child: Card(
                child: Container(
                  child: Center(
                    child: Text(
                      'MCI',
                      style: TextStyle(fontSize: 20.0),
                      ),
                  ),
                  height: heightCardSmall,
                  width: widthCard,
                ),
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Color(red),
              ),
            ),
            Container(
              child: Card(
                child: Container(
                  child: Center(
                    child: Text(
                      '4 - 1',
                      style: TextStyle(fontSize: 50.0),
                      ),
                  ),
                  height: heightCardBig,
                  width: widthCard,
                ),
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Color(green),
              ),
            ),
            Container(
              child: Card(
                child: Container(
                  child: Center(
                    child: Text(
                      'MCI',
                      style: TextStyle(fontSize: 20.0),
                      ),
                  ),
                  height: heightCardSmall,
                  width: widthCard,
                ),
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.5)),
                color: Color(green),
              ),
            ),
          ],     
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
        //body: HomePage(),
        body: HomePage()
      ),
    ),
  );
}