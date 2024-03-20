import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/applied_job_two_tab_container_page/models/applied_job_two_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the AppliedJobTwoTabContainerPage.
///
/// This class manages the state of the AppliedJobTwoTabContainerPage, including the
/// current appliedJobTwoTabContainerModelObj
class AppliedJobTwoTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {AppliedJobTwoTabContainerController(this.appliedJobTwoTabContainerModelObj);

Rx<AppliedJobTwoTabContainerModel> appliedJobTwoTabContainerModelObj;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
