import 'package:flutter/material.dart';

Widget logoWidget(
  double width,
  double height,
  String imgUrl,
) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/$imgUrl.png'),
        fit: BoxFit.cover,
      ),
    ),
  );
}
