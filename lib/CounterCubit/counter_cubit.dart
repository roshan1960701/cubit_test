import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit{
 CounterCubit():super(false);

 String Name = "Roshan";
 static final newName = "Roshan Wadekar";
 bool like = false;
 List names = ["Roshan","Ishank","Shrashti","Rohit","Pascal","Dominic"];
 int no = 0;
 bool check =false;

 initialState(){
  like = false;
 }

 void showText(){
  emit(names[no]);
  no = no + 1;
  if(no == names.length){
   no = 0;
  }
  /*if(names.length >= no){
   emit(names[no]);
  }
  if(names.length == no){
   emit("List Ended");
  }
  else {
   emit ("cannot display Names");
  }
*/
  //emit(names);
  //emit(state + 1);
 }

 void getLikes() {
 like = like ? false : true;
 emit(like);
 }

 void getCheck() {
  check = !check;
  emit(check);
 }


}