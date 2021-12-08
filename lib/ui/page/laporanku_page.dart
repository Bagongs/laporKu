import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laporku/common/route/route_name.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/ui/page/form_laporan_page.dart';
import 'package:laporku/ui/widgets/create_laporan_widget.dart';
import 'package:laporku/ui/widgets/custom_appbar_widget.dart';

class LaporankuPage extends StatelessWidget {
  const LaporankuPage({Key? key}) : super(key: key);
  final String _title = "Laporan Saya";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: CustomAppbarWidget(
        titleAppbar: _title,
      ),
      floatingActionButton: widgetFloating(context),
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

  Widget widgetFloating(BuildContext context) {
    return FloatingActionButton(
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
                          RouteName.formLaporanPage,
                          arguments: "Infrastruktur",
                        );
                      },
                      child: CreateLaporanWidget(
                        color: Colors.amber[50]!,
                        title: "Infrastruktur",
                        description:
                            "Laporan berkaitan dengan infrastruktur pemerintah",
                        imageUrl: "infrastruktur",
                      ),
                    ),
                  ),
                  Flexible(
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(
                          RouteName.formLaporanPage,
                          arguments: "Non Infrastruktur",
                        );
                      },
                      child: CreateLaporanWidget(
                        color: Colors.lightBlue[50]!,
                        title: "Non Infrastruktur",
                        description: "Laporan mengenai keluhan masyarakat",
                        imageUrl: "aspirasi",
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
    );
  }
}
