import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class HomeState extends Equatable {}

class InitialState extends HomeState{
  @override
  List<Object> get props => [];
}

class CheckBoxState extends HomeState{
  CheckBoxState(this.check);
  bool check;
  @override
  List<Object> get props => [check];

}

class UncheckBoxState extends HomeState{
  UncheckBoxState(this.check);
  bool check;
  @override
  List<Object> get props => [check];

}