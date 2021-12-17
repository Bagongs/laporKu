import '/app/controllers/auth_controller.dart';
import '/app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final auth = Get.put(AuthController());
  final List<Map<String, dynamic>> listItem = [
    {
      "title": "Keluar",
      "icon": Icons.exit_to_app_outlined,
    },
    {
      "title": "Tentang Kami",
      "icon": Icons.contact_support_rounded,
    },
    {
      "title": "Nilai aplikasi",
      "icon": Icons.star_outline,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color: blueColor.withOpacity(0.4),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/profile-pic.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "ACCOUNT NAME",
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(
                    top: 300,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: greyColor,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "0",
                          style: blueTextstyle.copyWith(
                            fontSize: 30,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text("Laporan")
                      ],
                    ),
                  ),
                )
              ],
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  title: Text("Keluar"),
                  leading: Icon(Icons.exit_to_app_outlined),
                  onTap: () {
                    auth.logOut();
                  },
                ),
                ListTile(
                  title: Text("Tentang Kami"),
                  leading: Icon(Icons.contact_support_rounded),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Nilai Aplikas"),
                  leading: Icon(Icons.star_outline),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
