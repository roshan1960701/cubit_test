import 'package:cubit_test/Model/post.dart';
import 'package:cubit_test/Movie/movie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Movie/movie_services.dart';

class MoviesCubit extends Cubit<MovieState> {
  MoviesCubit({this.repository}) : super(InitialState()) {
    getTrendingMovies();
  }

  final MovieRepository repository;

  void getTrendingMovies() async {
    try {
      emit(LoadingState());
      final movies = await repository.getMovies();
      //final post = await repository.getPost();
      emit(LoadedState(movies));
    } catch (e) {
      emit(ErrorState());
    }
  }
}