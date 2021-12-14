import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController emailController =
      TextEditingController(text: "testdaftar@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "123456");
  // TextEditingController nameController = TextEditingController(text: "orang");
  // TextEditingController phoneController = TextEditingController(text: "123456");

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passwordController.dispose();
    // nameController.dispose();
    // phoneController.dispose();
    super.onClose();
  }
}
