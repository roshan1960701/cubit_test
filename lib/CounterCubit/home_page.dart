import 'package:cubit_test/CounterCubit/counter_cubit.dart';
import 'package:cubit_test/Movie/movie_page.dart';
import 'package:cubit_test/Post/post_page.dart';
import 'package:cubit_test/checkboxState/home_bloc.dart';
import 'package:cubit_test/checkboxState/home_events.dart';
import 'package:cubit_test/checkboxState/home_state.dart';
import 'package:cubit_test/state/home_cubit.dart';
import 'package:cubit_test/state/home_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
  super.initState();
  for(int i = 0; i< 5; i++){
    BlocProvider.of<HomeBloc>(context).checkboxValues..add(false);
  }


  }

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

          BlocBuilder<CounterCubit,dynamic>(builder:(context,state){
            return IconButton(
              icon: Icon(state ?Icons.favorite : Icons.favorite_border,color: state ? Colors.red : Colors.grey,),
              onPressed:(){
                context.read<CounterCubit>().getLikes();
              },
            );
          }),
          SizedBox(
            height: 20.0,),

          BlocBuilder<CounterCubit,dynamic>(builder:(context,state){
            return CheckboxListTile(
              // key: ValueKey(id),
              title: Text('check here'),
              value: context.read<CounterCubit>().check,
              onChanged: (value){
                context.read<CounterCubit>().getCheck();
                /*scrollingDealerBloc.checkboxValues[key] = value;

        if(scrollingDealerBloc.checkboxValues[key] == true){
          scrollingDealerBloc.dealersId.add('$id');
        }else{
          scrollingDealerBloc.dealersId.remove('$id');
        }*/
                /*setState(() {
          });*/

              },
            );
          }),

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
          ),

          Container(
            height: 250,
            child: ListView.builder(
                itemCount: BlocProvider.of<HomeBloc>(context).checkboxValues.length,
                itemBuilder: (context,index){
                  return BlocBuilder<HomeBloc,HomeStates>(builder:(context,state){
                    return CheckboxListTile(
                      // key: ValueKey(id),
                      title: Text('check here'),
                      value: BlocProvider.of<HomeBloc>(context).checkboxValues[index],
                      onChanged: (value){
                        // context.read<HomeCubit>().getLikes(index);
                        BlocProvider.of<HomeBloc>(context)..add(CheckBoxEvent(index));
                      },
                    );
                  });
                }),

          ),

          /*BlocBuilder<CounterCubit,dynamic>(builder:(context,state){
            return Text()
          })*/
        ],
      ),
    );
  }


}
