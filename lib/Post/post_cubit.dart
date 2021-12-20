import 'package:cubit_test/Post/post_model.dart';
import 'package:cubit_test/Post/post_services.dart';
import 'package:cubit_test/Post/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Movie/movie_services.dart';


class PostCubit extends Cubit<PostState>{
  PostCubit({this.postServices}):super(InitialState()){
   getPost();
  }

   final PostServices postServices;

  void getPost() async{

    try{
      emit(LoadingState());
      final dealer = await postServices.getDealers();
      emit(LoadedState(dealer));
    }
    catch(e){
      emit(ErrorState());
    }
  }

}

