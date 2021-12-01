import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/ui/widgets/custom_appbar_widget.dart';

class LaporankuPage extends StatelessWidget {
  const LaporankuPage({Key? key}) : super(key: key);
  final String _title = "Laporan Saya";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(
        titleAppbar: _title,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: blueColor,
      ),
      body: Center(
        child: Text(
          "BELUM ADA LAPORAN",
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
