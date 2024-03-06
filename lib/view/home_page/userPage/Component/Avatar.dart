import 'package:flutter/material.dart';
import 'package:untitled1/Value/app_color.dart';

Widget Avatar({String url = "assets/images/Image_tam.png"}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(180)),
        border: Border.all(width: 2, color: TColors.neutral_300),
        color: Colors.black),
    height: 180,
    width: 180,
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(180)),
        child: Image.asset(
          url,
          height: 180,
          width: 180,
          fit: BoxFit.cover,
        )),
  );
}
