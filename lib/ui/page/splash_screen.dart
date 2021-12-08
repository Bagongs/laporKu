import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:laporku/common/route/route_name.dart';
import 'package:get/get.dart';
import 'package:laporku/ui/widgets/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _splashWidget(),
    );
  }

  Widget _splashWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logoWidget(
            200,
            200,
            "splash",
          ),
        ],
      ),
    );
  }

  // NOTE : ONLY RUN ONCE
  @override
  void initState() {
    moveFirstPage(context);
    super.initState();
  }

// NOTE: METHODE MOVE PAGE
  void moveFirstPage(context) {
    Timer(
      _duration,
      () {
        Get.offNamed(RouteName.firstPage);
      },
    );
  }

// NOTE : VARIABEL DURAION
  final _duration = Duration(
    seconds: 1 + Random().nextInt(6),
  );
}
