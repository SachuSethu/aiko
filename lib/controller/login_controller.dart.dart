import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  /// TEXT CONTROLLERS
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  /// PASSWORD VISIBILITY
  RxBool isPasswordHidden = true.obs;

  void togglePassword() {
    isPasswordHidden.value =
        !isPasswordHidden.value;
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();

    super.onClose();
  }
}