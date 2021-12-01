import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/ui/widgets/text_field_custom_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const routeName = "/sign_up_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE : LOGO
                _logoWidget(),
                const SizedBox(
                  height: 30,
                ),
                // NOTE : TEXTFIELD
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daftar Akun",
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextFieldCustomWidget(
                      textName: "Full Name",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextFieldCustomWidget(
                      textName: "Phone",
                      isPhone: true,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextFieldCustomWidget(
                      textName: "Email Adress",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextFieldCustomWidget(
                      textName: "Password",
                      isPassword: true,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.symmetric(
                    vertical: 50,
                  ),
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _logoWidget() {
    return Container(
      width: 160,
      height: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
