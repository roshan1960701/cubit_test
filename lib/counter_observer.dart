import 'package:bloc/bloc.dart';

class CounterOberserver extends BlocObserver{

  @override
  void onChange(Cubit cubit, Change change) {
    super.onChange(cubit, change);
    print("OnChange");
    print("${cubit.runtimeType} $change");
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print("OnEvent");
    print("${bloc.runtimeType} $event");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print("OnTransition");
    print("${bloc.runtimeType} $transition");
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    super.onError(cubit, error, stackTrace);
    print("$cubit $error $stackTrace ");
  }
}