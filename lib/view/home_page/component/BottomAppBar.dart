import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:untitled1/view/home_page/component/IconButtomAppBar.dart';

class ItemAppBar {
  String title;
  IconData icon;

  ItemAppBar({this.title = "", this.icon = Icons.abc_outlined});
}

Widget BottomAppBarCustom({
  required void Function(int) onPressed,
  required int currentIndex,
  required List<ItemAppBar> listItems,
}) {
  return BottomAppBar(
    child: Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: listItems.asMap().entries.map((entry) {
          final int index = entry.key;
          final ItemAppBar item = entry.value;
          return GestureDetector(
            onTap: () => onPressed(index),
            child: IconButtomAppBar(
                Items: item, currentIndex: currentIndex, index: index),
          );
        }).toList(),
      ),
    ),
  );
}
