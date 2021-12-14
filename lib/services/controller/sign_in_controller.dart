import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController emailController =
      TextEditingController(text: "testlogin@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "123456");

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
