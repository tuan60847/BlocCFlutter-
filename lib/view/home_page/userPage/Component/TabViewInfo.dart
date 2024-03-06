import 'package:flutter/material.dart';
import 'package:untitled1/view/home_page/userPage/user_Page.dart';

Widget TabInfoView(TabInfo tabInfo) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 4),
    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
    decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.all(Radius.circular(16))),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          tabInfo.icon,
          color: tabInfo.color,
        ),
        Expanded(
          flex: 4,
          child: Container(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tabInfo.title,
                    style: TextStyle(
                        color: tabInfo.color, fontWeight: FontWeight.w500),
                  ),
                  if (tabInfo.isVisibleValueView != false)
                    Text(
                      "Value",
                      style: TextStyle(color: tabInfo.color),
                    )
                ],
              )),
        ),
        Icon(
          Icons.navigate_next_outlined,
          color: tabInfo.color,
        ),
      ],
    ),
  );
}
