import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/create_account_screen/models/create_account_model.dart';
import 'package:final_project/presentation/create_account_three_screen/create_account_three_screen.dart';
import 'package:final_project/presentation/login_one_screen/controller/login_one_controller.dart';
import 'package:final_project/presentation/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import '../../applied_job_one_screen/database_helper/database_helper.dart';
import '../../homescreen/controller/homescreen_controller.dart';
import '../../login_one_screen/models/login_one_model.dart';
import '../../login_one_screen/services/login_one_service.dart';
import '../../root_screen/root_screen.dart';
import '../services/auth_service.dart';

class CreateAccountController extends GetxController {
  LoginOneController loginOneController = LoginOneController();
  ProfileController profileController = ProfileController();
  final HomescreenController homescreenController =
      Get.put(HomescreenController());
  TextEditingController createAccountInput1Controller = TextEditingController();
  TextEditingController createAccountInput2Controller = TextEditingController();
  TextEditingController createAccountInput3Controller = TextEditingController();

  Rx<CreateAccountModel> createAccountModelObj = CreateAccountModel().obs;
  Rx<bool> isShowPassword = true.obs;

  final AuthService _authService =
      AuthService("https://project2.amit-learning.com/api");

  Future<void> register() async {
    try {
      if (_validateForm()) {
        final name = createAccountInput1Controller.text;
        final email = createAccountInput2Controller.text;
        final password = createAccountInput3Controller.text;
        print("Name: $name, Email: $email, Password: $password");
        // Call the registration service
        final bool success = await _authService.registerUser(name, email, password);
        if (success) {
          print("User Registered Successfully");
          Get.offAll(()=>CreateAccountThreeScreen());
        }
      } else {
        print("fail");

        Get.snackbar(
          "Registration Error",
          "Failed to register. Please try again.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      // Handle any exceptions that may occur during the registration process
      print("Registration Exception: $e");
    }
  }

  bool _validateForm() {
    // Check if the name, email, and password are not empty
    if (createAccountInput1Controller.text.isEmpty ||
        createAccountInput2Controller.text.isEmpty ||
        createAccountInput3Controller.text.isEmpty) {
      Get.snackbar(
        "Validation Error",
        "All fields must be filled out.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

    // Add more validation logic as needed
    // For example, you can check the email format, password strength, etc.

    return true;
  }

  void toggleShowPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  @override
  void onClose() {
    super.onClose();
    createAccountInput1Controller.dispose();
    createAccountInput2Controller.dispose();
    createAccountInput3Controller.dispose();
  }
}
