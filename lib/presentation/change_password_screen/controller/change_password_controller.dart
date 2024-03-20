import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/change_password_screen/models/change_password_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangePasswordScreen.
///
/// This class manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj
class ChangePasswordController extends GetxController {TextEditingController oldPasswordController = TextEditingController();

TextEditingController newPasswordController = TextEditingController();

TextEditingController confirmNewPasswordController = TextEditingController();

Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

Rx<bool> isShowPassword2 = true.obs;

@override void onClose() { super.onClose(); oldPasswordController.dispose(); newPasswordController.dispose(); confirmNewPasswordController.dispose(); } 
 }
