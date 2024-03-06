import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/component/Button.dart';
import 'package:untitled1/widget/counter_event/counter_bloc.dart';
import 'package:untitled1/widget/counter_event/counter_event.dart';
import 'package:untitled1/widget/counter_event/counter_provider.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  _increase(BuildContext context) {
    context.read<CounterBloc>().add(IncreaseEvent());
  }

  _decrease(BuildContext context) {
    context.read<CounterBloc>().add(DecreaseEvent());
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(child: Container(
      child: BlocBuilder<CounterBloc, int>(builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count $state'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(() => _increase(context), "Increase"),
                Button(() => _decrease(context), "Decrease")
              ],
            )
          ],
        );
      }),
    ));
  }
}
