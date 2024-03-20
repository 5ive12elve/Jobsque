import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/create_account_four_tab_container_screen/models/create_account_four_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreateAccountFourTabContainerScreen.
///
/// This class manages the state of the CreateAccountFourTabContainerScreen, including the
/// current createAccountFourTabContainerModelObj
class CreateAccountFourTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<CreateAccountFourTabContainerModel> createAccountFourTabContainerModelObj =
      CreateAccountFourTabContainerModel().obs;

  late TabController tabviewController = Get.put<TabController>(
    TabController(vsync: this, length: 2),
  );

}
