import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/widget/counter_event/counter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncreaseEvent>((event, emit) => emit(state + 1));
    on<DecreaseEvent>((event, emit) => emit(state - 1));
  }

  void _increase(Emittable<int> emit) {
    emit;
  }

  void _decrease(Emittable<int> emit) {
    emit;
  }
}
