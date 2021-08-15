import 'package:flutter/material.dart';

class secondScreenBmi extends StatelessWidget {
  final String gender;
  final String weight;
  final String height;
  final String age;

  secondScreenBmi({
    required this.gender,
    required this.weight,
    required this.height,
    required this.age,
  }
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "BMI SECOND SCREEN",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

          ),
          leading: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gender : ${gender.toString()}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),//Gender
              Text(
                "Height : ${height.toString()}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Weight : ${weight.toString()}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),//Result
              Text(
                "Age : ${age.toString()}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),//Age
            ],
          ),
        ),
      ),
    );
  }
}
