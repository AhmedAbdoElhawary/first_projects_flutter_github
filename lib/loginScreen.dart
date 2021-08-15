
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class loginScreen extends StatefulWidget{
  @override
  _tryOneState createState() => _tryOneState();
}
class _tryOneState extends State<loginScreen> {
  var controlAddress=TextEditingController();

  var controlPassword=TextEditingController();

  var isVisible=true;

  var iconVisible=Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              leading: Icon(
                  Icons.menu,
              ),
              title: Text(
                  "Hello Ahmed Abdo"
              ),
              actions: [
                Icon(
                    Icons.alarm
                ),
              ],
            ),

            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: controlAddress,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                            labelText: 'Email Address',
                              prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: isVisible,
                        controller: controlPassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed:(){
                                setState(() {
                                  if(isVisible==true)
                                    isVisible=false;
                                  else
                                    isVisible=true;
                                  if(iconVisible==Icons.remove_red_eye)
                                    iconVisible=Icons.remove_red_eye_outlined;
                                  else
                                    iconVisible=Icons.remove_red_eye;
                                });
                              },
                            icon: Icon(
                              iconVisible,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.lightBlue,
                        child: MaterialButton(
                            onPressed: (){
                              print(controlAddress.text);
                              print(controlPassword.text);
                            },
                          child: Text(
                            'sign in',
                            style: TextStyle(
                              fontSize: 22,
                              fontStyle: FontStyle.italic,

                            ),

                          ),
                        ),
                      ),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don\'t have an account?",

                            ),
                            TextButton(
                                onPressed:(){
                                },
                                child: Text(
                                  "Register Now",
                                ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),

    );



  }
}