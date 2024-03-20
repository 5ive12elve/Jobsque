import 'controller/applied_job_two_tab_container_controller.dart';import 'models/applied_job_two_tab_container_model.dart';import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/applied_job_four_page/applied_job_four_page.dart';import 'package:final_project/presentation/applied_job_two_page/applied_job_two_page.dart';import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';import 'package:final_project/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AppliedJobTwoTabContainerPage extends StatelessWidget {AppliedJobTwoTabContainerPage({Key? key}) : super(key: key);

AppliedJobTwoTabContainerController controller = Get.put(AppliedJobTwoTabContainerController(AppliedJobTwoTabContainerModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 15.v), _buildTabview(), Expanded(child: SizedBox(height: 559.v, child: TabBarView(controller: controller.tabviewController, children: [AppliedJobTwoPage(), AppliedJobFourPage()])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_applied_job".tr)); } 
/// Section Widget
Widget _buildTabview() { return Container(height: 46.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(23.h)), child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray60001, labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500), unselectedLabelColor: appTheme.whiteA700, unselectedLabelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500), indicatorPadding: EdgeInsets.all(3.0.h), indicator: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(20.h)), tabs: [Tab(child: Text("lbl_active".tr)), Tab(child: Text("lbl_rejected".tr))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
