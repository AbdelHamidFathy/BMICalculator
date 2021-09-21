import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result_Screen extends StatelessWidget{
   String res;
  final int result;
  final bool isMale;
  final int weight;
  final int age; 
  result_Screen({
    required this.age,
    required this.isMale,
    required this.result,
    required this.weight,
    required this.res,
  });
  @override
  Widget build(BuildContext context) {
    if (result<18.5) {
     res='Underweight'; 
    }
    else if (result>18.5&&result<24.9) {
      res='Normalweight';
    }
    else if (result>25&&result<29.9) {
      res='Overweight';
    }
    else if (result>=30) {
      res='Obesity';
    }
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 1, 30, 1),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0.0,
        centerTitle: true,
        title: 
        Text(
          'RESULT'
        ),
      ),
      body: 
      SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/bmi.png'),
              ),
              Text(
                'Gender : ${isMale ? 'Male':'Female'}',
                style: TextStyle(
                  fontSize:40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Age : ${age}',
                style: TextStyle(
                  fontSize:40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Weight : ${weight}',
                style: TextStyle(
                  fontSize:40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Result : ${result}',
                style: TextStyle(
                  fontSize:40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                '${res}',
                style: TextStyle(
                  fontSize: 20.0,
                  color:Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}