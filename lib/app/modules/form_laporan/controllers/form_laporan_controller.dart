import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laporku/app/routes/app_pages.dart';

class FormLaporanController extends GetxController {
  late TextEditingController judulC;
  late TextEditingController isiC;
  late TextEditingController lokasiC;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void add(String judul, String isi, String lokasi, String nama, String telp,
      String status, String date, int up) async {
    CollectionReference laporan = firestore.collection("laporan");

    try {
      await laporan.add({
        "judul": judul,
        "isi": isi,
        "lokasi": lokasi,
        "nama": nama,
        "telp": telp,
        "status": status,
        "date": date,
        "up": up,
      });

      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil Menambahkan Laporan",
        onConfirm: () {
          judulC.clear();
          isiC.clear();
          lokasiC.clear();
          Get.toNamed(Routes.HOME);
        },
        textConfirm: "OK",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Error",
        middleText: "Tidak Berhasil Menambahkan Laporan",
        onConfirm: () => Get.offAllNamed(Routes.HOME),
      );
    }
  }

  @override
  void onInit() {
    judulC = TextEditingController();
    isiC = TextEditingController();
    lokasiC = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    judulC.dispose();
    isiC.dispose();
    lokasiC.dispose();
    super.dispose();
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference user = firestore.collection("users");

    return user.snapshots();
  }
}
