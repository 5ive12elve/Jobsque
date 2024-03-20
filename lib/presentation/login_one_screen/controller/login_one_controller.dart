import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../profile/controller/profile_controller.dart';
import '../../root_screen/root_screen.dart';
import '../models/login_one_model.dart';
import '../services/login_one_service.dart';

class LoginOneController extends GetxController {
  final ProfileController prflCtrlr = Get.put(ProfileController());
  late TextEditingController inputController;
  late TextEditingController passwordController;
  RxBool isShowPassword = true.obs;
  RxBool rememberme = false.obs;

  @override
  void onInit() {
    super.onInit();
    inputController = TextEditingController();
    passwordController = TextEditingController();

    // Load saved token on initialization
    loadSavedToken();
  }

  void loadSavedToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? savedToken = prefs.getString('token');

    if (savedToken != null && savedToken.isNotEmpty) {
      print("Token loaded: $savedToken");
    }
  }

  void saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? savedToken = prefs.getString('token');
    return savedToken;
  }

  void showSnackBar(String message) {
    Get.snackbar(
      'Login Failed',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      duration: Duration(seconds: 3),
    );
  }

  Future<bool> login(String email, String password) async {

    final LoginOneModel? loginResult = await LoginOneService.loginUser(email, password);

    if (loginResult != null) {

        if (loginResult.token != null) {
          print("Saving Token: ${loginResult.token!}");
          saveToken(loginResult.token!);
        } else {
          print('Token is null.');
        }



      return true;
    } else {
      showSnackBar('Invalid email or password. Please try again.');
      return false;
    }
  }
}
