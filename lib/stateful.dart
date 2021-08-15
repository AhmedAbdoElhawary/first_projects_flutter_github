
import 'package:flutter/material.dart';

class stateful extends StatefulWidget{
  @override
  _statefulState createState() => _statefulState();
}

class _statefulState extends State<stateful> {
  int count =1;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.lightBlueAccent,
                    child: TextButton(
                        child: Text(
                          "Mines",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                        onPressed:(){
                          setState(() {

                          });
                            count--;
                        },
                    ),
                  ),
              ),
              Text(
                '$count',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.lightBlueAccent,
                  child: TextButton(
                    child: Text(
                      "Plus",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                          color: Colors.white
                      ),
                    ),
                    onPressed:(){
                      setState(() {

                      });
                        count++;
                    },
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}