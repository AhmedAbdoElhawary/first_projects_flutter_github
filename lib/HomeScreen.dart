import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://scontent.fcai19-5.fna.fbcdn.net/v/t1.6435-9/142921433_789609518295031_522543785717672792_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=Gp5YBbO9FF4AX-ZOq1F&_nc_ht=scontent.fcai19-5.fna&oh=7ddc11494204529d117ae015433281ad&oe=61319124"),
              ),
              SizedBox(width: 10,),
              Text(
                "Chats",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),

              ),
            ],
          ),
          actions: [
            IconButton(
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white12,
                child: Icon(
                  Icons.camera_alt,
                  size: 18,
                ),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white12,
                child: Icon(
                  Icons.edit,
                  size: 18,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.5,
                    ),
                    color: Colors.white12,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white54,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white54,
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => pictureHorizontal(),
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                  itemCount: 12,
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => pictureVertical(),
                separatorBuilder: (context, index) => SizedBox(height: 5,),
                itemCount: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget pictureHorizontal()=>Container(
   width: 60,
   child: Column(
     children: [
       Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: [
           CircleAvatar(
             radius: 30,
             backgroundImage: NetworkImage("https://i.insider.com/5cb8b133b8342c1b45130629?width=700"),
           ),
           CircleAvatar(
             radius: 7,
             backgroundColor: Colors.green,
           ),
         ],
       ),
       Text(
         "Rana Ahmed Mohamed",
         maxLines: 2,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(
           color: Colors.white,
         ),
       ),
     ],

   ),
 );
  Widget pictureVertical()=>Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://footballleagueworld.co.uk/wp-content/uploads/2020/12/Rogan-2.jpg"),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 3,end:3),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Moamen Ahmed Ali Khalid",
                maxLines: 1,
                overflow:TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "How Are You ,Ahmed ? I Am Texting You Because I Need Your Help",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  Text(
                    ".jun 7",
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}