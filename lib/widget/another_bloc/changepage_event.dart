import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/widget/another_bloc/changepage_bloc.dart';

class ChangePageBloc extends Bloc<ChangePageEvent, int> {
  ChangePageBloc() : super(0) {
    on<ChangePage>((event, emit) => emit(event.newIndex));
  }

  void changePage(int newIndex) {
    add(ChangePage(newIndex));
  }
}
