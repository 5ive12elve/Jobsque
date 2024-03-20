import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/create_account_two_screen/models/create_account_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateAccountTwoScreen.
///
/// This class manages the state of the CreateAccountTwoScreen, including the
/// current createAccountTwoModelObj
class CreateAccountTwoController extends GetxController {TextEditingController userNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<CreateAccountTwoModel> createAccountTwoModelObj = CreateAccountTwoModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); userNameController.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
