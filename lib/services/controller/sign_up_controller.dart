import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController emailController =
      TextEditingController(text: "testdaftar@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "123456");

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
