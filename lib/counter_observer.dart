import 'package:bloc/bloc.dart';

class CounterOberserver extends BlocObserver{

  @override
  void onChange(Cubit cubit, Change change) {
    super.onChange(cubit, change);
    print("${cubit.runtimeType} $change");
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print("${bloc.runtimeType} $event");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print("${bloc.runtimeType} $transition");
  }
}