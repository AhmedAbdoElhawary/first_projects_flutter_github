
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/database/cubit.dart';

class CounterCubit extends Cubit<CounterStates>{

  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);
int count =1;

  void minus(){
    count--;
    emit(CounterMinusState());

  }
  void plus(){
    count++;
    emit(CounterPlusState());
  }

}