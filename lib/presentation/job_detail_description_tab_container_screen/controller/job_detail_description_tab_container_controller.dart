import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/job_detail_description_tab_container_screen/models/job_detail_description_tab_container_model.dart';
import 'package:flutter/material.dart';

class JobDetailDescriptionTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<JobDetailDescriptionTabContainerModel>
      jobDetailDescriptionTabContainerModelObj =
      JobDetailDescriptionTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
