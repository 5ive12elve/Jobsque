import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/help_center_screen/models/help_center_model.dart';import 'package:flutter/material.dart';/// A controller class for the HelpCenterScreen.
///
/// This class manages the state of the HelpCenterScreen, including the
/// current helpCenterModelObj
class HelpCenterController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HelpCenterModel> helpCenterModelObj = HelpCenterModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
