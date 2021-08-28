import 'package:cubit_test/CounterCubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<CounterCubit,dynamic>(builder:(context,state){
            return Text("${state}");
          }),

          MaterialButton(
            color: Colors.blueGrey,
            child: Text('Cllick Here'),
            onPressed:(){
              context.read<CounterCubit>().showText();
            },
          ),

          /*BlocBuilder<CounterCubit,dynamic>(builder:(context,state){
            return Text()
          })*/
        ],
      ),
    );
  }
}
