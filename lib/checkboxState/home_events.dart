abstract class HomeEvents {
  const HomeEvents();
}


class CheckBoxEvent extends HomeEvents{
  CheckBoxEvent(this.index);
  int index;
}