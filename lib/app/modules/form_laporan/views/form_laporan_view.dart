import '/app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/form_laporan_controller.dart';

class FormLaporanView extends GetView<FormLaporanController> {
  const FormLaporanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: SizedBox(
          height: 1200,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Buat Laporan"),
              centerTitle: true,
              backgroundColor: blueColor,
            ),
            body: Padding(
              padding: EdgeInsets.only(top: 30, left: defaultMargin),
              child: ListView(
                children: [
                  Column(
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
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: controller.judulC,
                          autocorrect: false,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            labelText: 'judul Aduan',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextField(
                          controller: controller.isiC,
                          maxLines: 5,
                          maxLength: 250,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
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
                        TextField(
                          controller: controller.lokasiC,
                          decoration: const InputDecoration(
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
                              height: 10,
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              decoration:
                                  BoxDecoration(color: Colors.grey[400]),
                              child: Image.asset(
                                'assets/addimg.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              child: ElevatedButton(
                                  onPressed: () {
                                    controller.add(
                                        controller.judulC.text,
                                        controller.isiC.text,
                                        controller.lokasiC.text);
                                  },
                                  child: Text("Laporkan")),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
