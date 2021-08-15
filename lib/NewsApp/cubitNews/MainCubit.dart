import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/NewsApp/cubitNews/NewsStates.dart';
import 'package:untitled/NewsApp/cubitNews/urlClass.dart';

class MainCubit extends Cubit<NewsStates> {
  int whatIndex = 0;

  MainCubit() : super(NewsInitialize());

  static MainCubit get(context) => BlocProvider.of(context);

  List<BottomNavigationBarItem> ListNavigation = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
        color: Color.fromRGBO(28, 27, 27, 70),
      ),
      label: "Business",
      backgroundColor: Color.fromRGBO(40, 168, 168, 0.611764705882353),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports_baseball_rounded,
        color: Color.fromRGBO(28, 27, 27, 70),
      ),
      label: "Sports",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
        color: Color.fromRGBO(28, 27, 27, 70),
      ),
      label: "Science",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
        color: Color.fromRGBO(28, 27, 27, 70),
      ),
      label: "Settings",
    ),

  ];

  void changeIndex(int i){
    whatIndex=i;
  }
  List<dynamic>business=[];
  var getImage;
  var getTitle;
  var getDescription;
  void getBusiness(){
    emit(NewsLoading());
    DioHelper.getData(url:'v2/everything',
      query: {
        'q':'apple',
        'from':'2021-08-09',
        'to':'2021-08-09',
        'sortBy':'popularity',
        'apiKey':'d13c4ea022134b0f92a7469a0041a68a',
      },).then((value) {
      getTitle=value.data['articles'][0]['title'];
      getImage=value.data['articles'][1]['urlToImage'];
      getDescription=value.data['articles'][2]['description'];
      emit(NewsGetSuccess());
    }).catchError((e){
      print(e.toString());
      emit(NewsGetError(e.toString()));
    });
  }
}