import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/widget/another_bloc/changepage_event.dart';

class ChangePageProvider extends StatelessWidget {
  final Widget child;
  const ChangePageProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ChangePageBloc();
      },
      child: child, // Bao bọc child của bạn trong BlocProvider
    );
  }
}
