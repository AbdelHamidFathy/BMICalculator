import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
     ()=>Navigator.pushReplacement(context,
       MaterialPageRoute(builder:
        (context) => home_screen()
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(5, 1, 30, 1),
      child: Image(
        image: AssetImage(
          'images/bmi.png'
        ),
      ),
    );
  }
}