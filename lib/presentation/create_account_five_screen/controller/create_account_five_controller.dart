import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/create_account_five_screen/models/create_account_five_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateAccountFiveScreen.
///
/// This class manages the state of the CreateAccountFiveScreen, including the
/// current createAccountFiveModelObj
class CreateAccountFiveController extends GetxController {TextEditingController inputOneController = TextEditingController();

TextEditingController inputTwoController = TextEditingController();

TextEditingController passwordInputController = TextEditingController();

Rx<CreateAccountFiveModel> createAccountFiveModelObj = CreateAccountFiveModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); inputOneController.dispose(); inputTwoController.dispose(); passwordInputController.dispose(); } 
 }
