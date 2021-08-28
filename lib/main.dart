import 'package:cubit_test/CounterCubit/counter_cubit.dart';
import 'package:cubit_test/counter_observer.dart';
import 'package:cubit_test/CounterCubit/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CounterOberserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubit Samples',
      home: BlocProvider(
          create: (_) => CounterCubit(),
          child: HomePage()),
    );
  }
}

