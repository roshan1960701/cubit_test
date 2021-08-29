import 'package:cubit_test/CounterCubit/counter_cubit.dart';
import 'package:cubit_test/Movie/movie_page.dart';
import 'package:cubit_test/Post/post_page.dart';
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
          SizedBox(
            height: 20.0,),

          MaterialButton(
            color: Colors.greenAccent,
            child: Text('Movies App'),
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => MoviePage()));
            },
          ),
          SizedBox(
            height: 20.0,),

          MaterialButton(
            color: Colors.greenAccent,
            child: Text('Posts'),
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => PostPage()));
            },
          )

          /*BlocBuilder<CounterCubit,dynamic>(builder:(context,state){
            return Text()
          })*/
        ],
      ),
    );
  }
}
