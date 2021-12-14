import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/services/controller/auth_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Map> listItem = [
    {"title": "Keluar", "icon": Icons.exit_to_app_outlined},
    {"title": "Tentang Kami", "icon": Icons.contact_support_rounded},
    {"title": "Nilai aplikasi", "icon": Icons.star_outline},
  ];

  final authC = Get.find<AuthController>();

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
                        "GANJAR PRANOWO",
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
            Padding(
              padding: const EdgeInsets.only(),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  Map item = listItem[index];
                  return ListTile(
                    title: Text(item['title']),
                    leading: Icon(
                      item['icon'],
                    ),
                  );
                },
                itemCount: listItem.length,
              ),
            ),
            IconButton(
                onPressed: () {
                  authC.logout();
                },
                icon: const Icon(Icons.logout)),
          ],
        ),
      ),
    );
  }
}
