import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/homescreen_accepted_screen/models/homescreen_accepted_model.dart';
import 'package:flutter/material.dart';

class HomescreenAcceptedController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomescreenAcceptedModel> homescreenAcceptedModelObj =
      HomescreenAcceptedModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
