import 'package:flutter/material.dart';
import 'package:untitled1/view/home_page/component/BottomAppBar.dart';

Widget IconButtomAppBar(
    {required int currentIndex,
    required int index,
    required ItemAppBar Items}) {
  Color color = (currentIndex == index ? Colors.green : Colors.black) as Color;

  return Container(
    width: 90,
    height: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadiusDirectional.all(Radius.circular(8)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Items.icon,
          size: 24,
          color: color,
        ),
        Text(
          Items.title,
          style: TextStyle(color: color),
        )
      ],
    ),
  );
}
