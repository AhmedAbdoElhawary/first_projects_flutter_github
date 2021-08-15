import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/NewsApp/cubitNews/MainCubit.dart';
import 'package:untitled/NewsApp/cubitNews/NewsStates.dart';
import 'package:untitled/NewsApp/cubitNews/urlClass.dart';

class NevigatorBarNews extends StatefulWidget{
  @override
  State<NevigatorBarNews> createState() => _NevigatorBarNewsState();
}

class _NevigatorBarNewsState extends State<NevigatorBarNews> {
  int current=0;
@override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context)=>MainCubit()..getBusiness(),
      child: BlocConsumer<MainCubit,NewsStates>(
        listener:(context, state) {},
        builder: (context, state) {
          var cubit=MainCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: (){
                  },
                  icon: Icon(
                    Icons.search,
                  ),
                  color: Colors.black,
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
                currentIndex: cubit.whatIndex,
                onTap: (i){
                  setState(() {
                    cubit.changeIndex(i);
                  });
                },
                items:cubit.ListNavigation,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                cubit.getBusiness();
              },
              child: Icon(Icons.add),
            ),
            body: Row(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage("${cubit.getImage}")
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          "${cubit.getTitle}",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${cubit.getDescription}",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ]
                    ),
                  ),
                ),
              ],
            ),
          );
        } ,
      ),
    );
  }
}