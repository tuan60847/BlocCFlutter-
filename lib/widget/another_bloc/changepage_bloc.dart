abstract class ChangePageEvent {}

class ChangePage extends ChangePageEvent{
  late final int newIndex;

  ChangePage(this.newIndex);
  
}
