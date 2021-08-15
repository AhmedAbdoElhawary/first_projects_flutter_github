import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/secondScreenBmi.dart';

class bmiCalculator extends StatefulWidget{
  @override
  _bmiCalculatorState createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  double sliderValue=120.0;
  double weightValue=60;
  double ageValue=20;
  bool isMale=true ;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromRGBO(5, 7, 31, 1.0),
          title: Center(
            child: Text(
              "BMI CALCULATOR",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          color: Color.fromRGBO(2, 3, 36, 1.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isMale=true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isMale?Colors.blueAccent:Color.fromRGBO(49, 49, 57, 0.34901960784313724),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage('images/male.png'),
                                    height: 70,
                                    width: 80,
                                    color: Colors.white,
                                  ),//male image
                                  SizedBox(height: 10,),
                                  Text(
                                    "MALE",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white54,
                                    ),
                                  ),//male text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isMale=false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: !isMale?Colors.blueAccent:Color.fromRGBO(49, 49, 57, 0.34901960784313724),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage('images/female.png'),
                                    height: 70,
                                    width: 80,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "FEMALE",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(47, 47, 57, 0.45098039215686275),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white24,
                          ),
                        ),//height
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline:TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${sliderValue.round()}",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white24,
                              ),
                            ),
                          ],
                        ),//180cm
                        Slider(
                          value: sliderValue,
                          max: 250,
                          min: 80,
                          onChanged: (value){
                            setState(() {
                              sliderValue=value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(47, 47, 57, 0.45098039215686275),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "WEIGHT",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white24,
                                  ),
                                ),
                                Text(
                                  "${weightValue.round()}",
                                  style: TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white24,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          weightValue--;
                                        });
                                      },
                                      backgroundColor: Colors.white24,
                                      mini: true,
                                      heroTag: "a",
                                      child:Icon(
                                        Icons.remove,
                                        size:27,
                                      ),
                                    ),
                                    FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          weightValue++;
                                        });
                                      },
                                      backgroundColor: Colors.white24,
                                      mini: true,
                                      heroTag: "b",
                                      child:Icon(
                                        Icons.add,
                                        size:27,
                                      ),
                                    ),
                                  ],
                                ),//(- +)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(47, 47, 57, 0.45098039215686275),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "AGE",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white24,
                                  ),
                                ),
                                Text(
                                  "${ageValue.round()}",
                                  style: TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white24,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          ageValue--;
                                        });
                                      },
                                      backgroundColor: Colors.white24,
                                      mini: true,
                                      heroTag: "c",
                                      child:Icon(
                                        Icons.remove,
                                        size:27,
                                      ),
                                    ),
                                    FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          ageValue++;
                                        });
                                      },
                                      backgroundColor: Colors.white24,
                                      mini: true,
                                      heroTag: "e",
                                      child:Icon(
                                        Icons.add,
                                        size:27,
                                      ),
                                    ),
                                  ],
                                ),//(- +)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                  onPressed: (){
                    print("hello");
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return secondScreenBmi(
                            gender: isMale==true?"Male":"Female",
                            height: "${sliderValue.round()}",
                            weight: "${weightValue.round()}",
                            age: "${ageValue.round()}",
                          );
                        }),
                      );
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Center(
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ) ,
            ],
          ),
        ),
      ),
    );
  }
}