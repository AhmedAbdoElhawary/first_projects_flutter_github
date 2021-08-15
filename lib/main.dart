import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/NewsApp/NevigatorBarNews.dart';
import 'package:untitled/NewsApp/cubitNews/urlClass.dart';

import 'BMI calculator.dart';

void main() {
  runApp(MyFirstApp());
  DioHelper.init();
}
//BMI calculator and second screen

class MyFirstApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home:bmiCalculator(),
    );
  }

}

