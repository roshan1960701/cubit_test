
abstract class HomeStates {}


class InitialState extends HomeStates{
  InitialState();
}

class CheckState extends HomeStates{
  CheckState(this.check);
  bool check;
}