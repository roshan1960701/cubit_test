import 'package:equatable/equatable.dart';
import '../Movie/movie_model.dart';

abstract class MovieState extends Equatable {}

class InitialState extends MovieState {
  @override
  List<Object> get props => [];
}

class LoadingState extends MovieState {
  @override
  List<Object> get props => [];
}

class LoadedState extends MovieState {
  LoadedState(this.movies);

  final List<MovieModel> movies;

  @override
  List<Object> get props => [movies];
}

class ErrorState extends MovieState {
  @override
  List<Object> get props => [];
}