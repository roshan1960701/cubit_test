import 'dart:convert';
import 'dart:io';

import 'package:cubit_test/state/home_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit() : super(InitialState());
  bool like = false;
  List checkboxList = [];


  void getLikes(int index) {
    checkboxList[index] = !checkboxList[index];
    checkboxList[index] ? emit(CheckBoxState(checkboxList[index])) : emit(CheckBoxState(checkboxList[index]));
    /*like = like ? false : true;
    like ? emit(CheckBoxState(like)) : emit(CheckBoxState(like));*/

  }

}