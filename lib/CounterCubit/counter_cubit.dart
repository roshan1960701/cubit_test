import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit{
 CounterCubit():super(0);

 String Name = "Roshan";
 static final newName = "Roshan Wadekar";

 List names = ["Roshan","Ishank","Shrashti","Rohit","Pascal","Dominic"];
 int no = 0;

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

}