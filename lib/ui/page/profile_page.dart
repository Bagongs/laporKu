import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: Column(
              children: [
                SizedBox(
                  height: defaultMargin,
                ),
                const Icon(
                  Icons.account_circle,
                  size: 148,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  "Azizah",
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 20),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Text(
                  "azizah@gmail.com",
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
