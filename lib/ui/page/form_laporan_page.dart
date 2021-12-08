import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laporku/common/theme.dart';

class FormLaporanPage extends StatelessWidget {
  const FormLaporanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buat Laporan"),
        centerTitle: true,
        backgroundColor: blueColor,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: defaultMargin),
        child: ListView(
          children: [
            _titleWidget(),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(right: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'judul Aduan',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextField(
                    maxLines: 5,
                    maxLength: 250,
                    decoration: InputDecoration(
                      labelText: 'Isi Aduan',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                    controller: TextEditingController(
                      text: 'Automatis di isi lokasinya',
                    ),
                    enabled: false,
                    keyboardType: TextInputType.none,
                    readOnly: true,
                    decoration: InputDecoration(
                      label: Row(
                        children: const [
                          Icon(Icons.location_on),
                          Text("Lokasi")
                        ],
                      ),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Keterangan Lokasi',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gambar Aduan",
                        style: blackTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(color: Colors.grey[400]),
                        child: Image.asset(
                          'assets/addimg.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _titleWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kirim Aduan",
          style: blueTextstyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "Kategori: ${Get.arguments.toString()}",
          style: blackTextStyle,
        )
      ],
    );
  }
}
