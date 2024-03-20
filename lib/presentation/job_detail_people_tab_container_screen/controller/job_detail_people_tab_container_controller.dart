import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/job_detail_people_tab_container_screen/models/job_detail_people_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the JobDetailPeopleTabContainerScreen.
///
/// This class manages the state of the JobDetailPeopleTabContainerScreen, including the
/// current jobDetailPeopleTabContainerModelObj
class JobDetailPeopleTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<JobDetailPeopleTabContainerModel> jobDetailPeopleTabContainerModelObj = JobDetailPeopleTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
