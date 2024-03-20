import 'controller/notification_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   mediaQueryData = MediaQuery.of(context);
   return SafeArea(
    child: Scaffold(
     appBar: _buildAppBar(),
     body: SingleChildScrollView(
      child: Container(
       width: double.maxFinite,
       padding: EdgeInsets.symmetric(vertical: 18.v),
       child: Column(
        children: [
         SizedBox(height: 14.v),
         Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
          decoration: AppDecoration.outlineGray,
          child: Text(
           "msg_job_notification".tr,
           style: CustomTextStyles.titleMediumGray60001,
          ),
         ),
         SizedBox(height: 12.v),
         _buildNotificationSettingRow1(),
         _buildViewStack(),
         _buildNotificationSettingRow2(),
         _buildNotificationSettingRow3(),
         _buildNotificationSettingRow4(),
         SizedBox(height: 32.v),
         Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
          decoration: AppDecoration.outlineGray,
          child: Text(
           "msg_other_notification".tr,
           style: CustomTextStyles.titleMediumGray60001,
          ),
         ),
         SizedBox(height: 12.v),
         _buildNotificationSettingRow5(),
         _buildNotificationSettingRow6(),
        ],
       ),
      ),
     ),
    ),
   );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 70.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_notification".tr));
  }

  /// Section Widget
  Widget _buildNotificationSettingRow1() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.only(top: 18.v, bottom: 17.v),
        decoration: AppDecoration.outlineBluegray1001,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Text("msg_your_job_search".tr,
                  style: theme.textTheme.bodyLarge)),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildViewStack() {
    return SizedBox(
        height: 62.v,
        width: 327.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 2.adaptSize,
                  width: 2.adaptSize,
                  margin: EdgeInsets.only(right: 35.h, bottom: 10.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                      borderRadius: BorderRadius.circular(1.h)))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.only(top: 18.v, bottom: 17.v),
                  decoration: AppDecoration.outlineBluegray1001,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
                            child: Text("msg_job_application".tr,
                                style: theme.textTheme.bodyLarge)),
                        Obx(() => CustomSwitch(
                            value: controller.isSelectedSwitch1.value,
                            onChange: (value) {
                              controller.isSelectedSwitch1.value = value;
                            }))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildNotificationSettingRow2() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.only(top: 18.v, bottom: 17.v),
        decoration: AppDecoration.outlineBluegray1001,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
              child: Text("msg_job_application2".tr,
                  style: theme.textTheme.bodyLarge)),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch2.value,
              onChange: (value) {
                controller.isSelectedSwitch2.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildNotificationSettingRow3() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.only(top: 18.v, bottom: 17.v),
        decoration: AppDecoration.outlineBluegray1001,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
              child: Text("msg_jobs_you_may_be".tr,
                  style: theme.textTheme.bodyLarge)),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch3.value,
              onChange: (value) {
                controller.isSelectedSwitch3.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildNotificationSettingRow4() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.only(top: 18.v, bottom: 17.v),
        decoration: AppDecoration.outlineBluegray1001,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
              child: Text("msg_job_seeker_updates".tr,
                  style: theme.textTheme.bodyLarge)),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch4.value,
              onChange: (value) {
                controller.isSelectedSwitch4.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildNotificationSettingRow5() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.only(top: 18.v, bottom: 17.v),
        decoration: AppDecoration.outlineBluegray1001,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Text("lbl_show_profile".tr,
                  style: theme.textTheme.bodyLarge)),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch5.value,
              onChange: (value) {
                controller.isSelectedSwitch5.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildNotificationSettingRow6() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.only(top: 18.v, bottom: 17.v),
        decoration: AppDecoration.outlineBluegray1001,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
              child:
                  Text("lbl_all_message".tr, style: theme.textTheme.bodyLarge)),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch6.value,
              onChange: (value) {
                controller.isSelectedSwitch6.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildNotificationSettingRow7() {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 88.v),
        decoration: AppDecoration.outlineBluegray1002,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
              child: Text("lbl_message_nudges".tr,
                  style: theme.textTheme.bodyLarge)),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch7.value,
              onChange: (value) {
                controller.isSelectedSwitch7.value = value;
              }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
