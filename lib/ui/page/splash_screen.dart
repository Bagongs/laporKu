import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:laporku/ui/page/first_page.dart';
import 'package:laporku/ui/widgets/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = '/splash-screen';

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
          const SizedBox(
            height: 50,
          ),
          const CircularProgressIndicator(
            color: Colors.amber,
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
        Navigator.pushReplacementNamed(context, FirstPage.routeName);
      },
    );
  }

// NOTE : VARIABEL DURAION
  final _duration = Duration(
    seconds: Random().nextInt(6),
  );
}
