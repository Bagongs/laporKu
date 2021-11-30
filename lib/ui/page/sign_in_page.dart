import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/ui/widgets/logo_widget.dart';
import 'package:laporku/ui/widgets/text_field_custom_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: defaultRadius,
              right: defaultRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logoWidget(160.0, 100.0),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Masuk dan Buat Laporanmu",
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFieldCustomWidget(
                  textName: "Email Adress",
                  isPassword: false,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const TextFieldCustomWidget(
                  textName: "Password",
                  isPassword: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 350,
                  height: 55.0,
                  child: Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: blueColor,
                        ),
                        onPressed: () {},
                        child: const Text("Sign In"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
