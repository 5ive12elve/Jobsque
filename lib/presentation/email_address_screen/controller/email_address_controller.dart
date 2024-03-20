import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/email_address_screen/models/email_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the EmailAddressScreen.
///
/// This class manages the state of the EmailAddressScreen, including the
/// current emailAddressModelObj
class EmailAddressController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<EmailAddressModel> emailAddressModelObj = EmailAddressModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
