import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/database/count.dart';
import 'package:untitled/database/cubit.dart';

class tryLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context, state) {} ,
        builder: (context, state)
        {
          return Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text(
                  "Trying",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20
                  ),
                ),
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).minus();
                    },
                    child:Text(
                      "Minis",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                  Text(
                    "${CounterCubit.get(context).count}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,fontStyle: FontStyle.italic,
                    ),
                  ),
                  TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).plus();
                    },
                    child:Text(
                      "Plus",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}