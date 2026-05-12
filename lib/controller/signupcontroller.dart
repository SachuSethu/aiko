import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {

  /// TEXT CONTROLLERS
  final firstNameController = TextEditingController();

  final secondNameController = TextEditingController();

  final emailController = TextEditingController();

  final rollNumberController = TextEditingController();

  final accessCodeController = TextEditingController();

  final passwordController = TextEditingController();

  /// PASSWORD VISIBILITY
  RxBool isPasswordHidden = true.obs;

  /// LOADING STATE
  RxBool isLoading = false.obs;

  /// TOGGLE PASSWORD
  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  /// SIGNUP FUNCTION
  void signup() {

    final firstName = firstNameController.text.trim();

    final secondName = secondNameController.text.trim();

    final email = emailController.text.trim();

    final rollNumber = rollNumberController.text.trim();

    final accessCode = accessCodeController.text.trim();

    final password = passwordController.text.trim();

    /// VALIDATION
    if (firstName.isEmpty ||
        secondName.isEmpty ||
        email.isEmpty ||
        rollNumber.isEmpty ||
        accessCode.isEmpty ||
        password.isEmpty) {

      Get.snackbar(
        "Error",
        "Please fill all fields",

        snackPosition: SnackPosition.BOTTOM,
      );

      return;
    }

    if (!email.contains("@")) {

      Get.snackbar(
        "Invalid Email",
        "Enter a valid university email",

        snackPosition: SnackPosition.BOTTOM,
      );

      return;
    }

    if (password.length < 6) {

      Get.snackbar(
        "Weak Password",
        "Password must be at least 6 characters",

        snackPosition: SnackPosition.BOTTOM,
      );

      return;
    }

    /// LOADING
    isLoading.value = true;

    Future.delayed(
      const Duration(seconds: 2),
      () {

        isLoading.value = false;

        Get.snackbar(
          "Success",
          "Account created successfully",

          snackPosition: SnackPosition.BOTTOM,
        );

        print("First Name : $firstName");

        print("Second Name : $secondName");

        print("Email : $email");

        print("Roll Number : $rollNumber");

        print("Access Code : $accessCode");

        print("Password : $password");
      },
    );
  }

  @override
  void onClose() {

    firstNameController.dispose();

    secondNameController.dispose();

    emailController.dispose();

    rollNumberController.dispose();

    accessCodeController.dispose();

    passwordController.dispose();

    super.onClose();
  }
}