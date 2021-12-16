import '/app/routes/app_pages.dart';
import '/app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/laporan_controller.dart';

class LaporanView extends GetView<LaporanController> {
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
        title: Text("Laporan"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              top: Radius.circular(defaultRadius),
            )),
            context: context,
            builder: (context) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(defaultRadius),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(
                            Routes.FORM_LAPORAN,
                            arguments: "Infrastruktur",
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber[50],
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(defaultRadius),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Infrastruktur",
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              ClipOval(
                                child: Image.asset(
                                  'assets/infrastruktur.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: defaultMargin,
                              ),
                              Text(
                                "Laporan berkaitan dengan infrastruktur pemerintah",
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: greyTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(
                            Routes.FORM_LAPORAN,
                            arguments: "Non Infrastruktur",
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[50],
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(defaultRadius),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Non Infrastruktur",
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              ClipOval(
                                child: Image.asset(
                                  'assets/aspirasi.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: defaultMargin,
                              ),
                              Text(
                                "Laporan mengenai keluhan masyarakat",
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: greyTextStyle.copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: blueColor,
      ),
      body: Center(
        child: Text(
          "BELUM ADA LAPORAN",
          softWrap: true,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
