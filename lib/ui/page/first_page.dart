import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/ui/page/sign_in_page.dart';
import 'package:laporku/ui/page/sign_up_page.dart';
import 'package:laporku/ui/widgets/logo_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  static const routeName = "/first_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(top: 30, left: 24, child: logoWidget(167, 101)),
          Positioned(
            top: 139,
            left: 30,
            child: Text(
              "Melaporkan keresahan\nmanjadi lebih\nmudah dan simple",
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 24,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.1, 0.7),
            child: SizedBox(
              width: 350,
              height: 55.0,
              child: Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: yellowColor,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SignInPage.routeName);
                    },
                    child: Text(
                      "Get Started",
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.1, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum memiliki akun?",
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpPage.routeName);
                  },
                  child: Text(
                    "Sign Up",
                    style: yellowTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
