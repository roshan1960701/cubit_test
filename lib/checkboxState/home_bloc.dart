

import 'package:cubit_test/checkboxState/home_events.dart';
import 'package:cubit_test/checkboxState/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvents,HomeStates>{
  List<bool> checkboxValues = [];

  HomeBloc(HomeStates initialState) : super(initialState);

  @override
  Stream<HomeStates> mapEventToState(HomeEvents event) async*{
    if(event is CheckBoxEvent){
      //Perfect solution for avoid set state in checkbox
      checkboxValues[event.index] = !checkboxValues[event.index];
      yield CheckState(checkboxValues[event.index]);
    }
  }
}