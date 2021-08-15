import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class nevigatorBar extends StatefulWidget {
  @override
  _nevigatorBarState createState() => _nevigatorBarState();
}

class _nevigatorBarState extends State<nevigatorBar> {
  int currentIndex = 0;
  int showBodyIndex = 0;
  List<String> showBody = [
    "New Task",
    "Done Task",
    "Archive Task",
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    initializeDB();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${showBody[showBodyIndex]}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "${showBody[showBodyIndex]}",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        elevation: 25,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            showBodyIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: "Tasks",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outline,
            ),
            label: "Done",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive,
            ),
            label: "Archive",
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scaffoldKey.currentState!.showBottomSheet(
            (context) => Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200,
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }

  var database;

  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'example.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL,age INTEGER NOT NULL, country TEXT NOT NULL, email TEXT)",
        );
      },
      version: 1,
    );

  }

  void insertDatabase() {
    return database.transaction((txn) {
      txn.rawInsert(
          'INSERT INTO tasks(title,date,time,status) VALUES("first task","you are fucking crazy","2020_8_9","no")');

      return null;
    });
  }
}
