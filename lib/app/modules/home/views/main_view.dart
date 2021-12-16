import '/app/routes/app_pages.dart';
import '/app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MainView extends GetView {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.NOTIFICATION);
            },
            icon: const Icon(
              Icons.notifications,
            ),
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.subject_rounded,
            ),
          ),
        ),
        backgroundColor: blueColor,
        title: const Text("Laporan"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.DETAIL);
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      child: Image.asset(
                        "assets/dummy.jpg",
                        height: 180,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Jalan Rusak di Jl. Pamularsih dekat Indomaret",
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.account_circle),
                                  Text("Azizah"),
                                ],
                              ),
                              const Text("April")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.arrow_circle_up),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.comment,
                                    size: 22.5,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.share,
                                    size: 20,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "•",
                                    style: TextStyle(
                                      color: yellowColor,
                                      fontSize: 36,
                                    ),
                                  ),
                                  const Text("Dalam Proses"),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
