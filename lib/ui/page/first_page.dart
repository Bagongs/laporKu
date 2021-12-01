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
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                logoWidget(167, 101, "logo"),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Melaporkan keresahan\nmanjadi lebih\nmudah dan simple",
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 373,
                ),
                SizedBox(
                  width: 350,
                  height: 55.0,
                  child: Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(defaultRadius),
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
                Row(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
