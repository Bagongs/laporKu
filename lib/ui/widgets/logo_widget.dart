import 'package:flutter/material.dart';

Widget logoWidget(
  double width,
  double height,
) {
  return Container(
    width: width,
    height: height,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/logo.png'),
        fit: BoxFit.cover,
      ),
    ),
  );
}
