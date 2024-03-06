import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/widget/counter_event/counter_event.dart';

class CounterProvider extends StatelessWidget {
  final Widget child;
  const CounterProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return CounterBloc();
      },
      child: child,
    );
  }

}