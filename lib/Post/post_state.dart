import 'package:cubit_test/Post/GetDealer.dart';

import '../Post/post_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class PostState extends Equatable {}

class InitialState extends PostState {
  @override
  List<Object> get props => [];
}

class LoadingState extends PostState{
  @override
  List<Object> get props => [];
}

class LoadedState extends PostState{
  // LoadedState(this.post);
LoadedState(this.data);
  // final List<Post> post;
final GetMarketingPersons data;
  @override
  List<Object> get props => [/*post*/data];
}

class ErrorState extends PostState{
  @override
  List<Object> get props => [];
}