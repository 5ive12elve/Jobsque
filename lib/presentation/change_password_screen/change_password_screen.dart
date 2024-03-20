import 'controller/change_password_controller.dart';import 'package:final_project/core/app_export.dart';import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';import 'package:final_project/widgets/app_bar/custom_app_bar.dart';import 'package:final_project/widgets/custom_elevated_button.dart';import 'package:final_project/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class ChangePasswordScreen extends GetWidget<ChangePasswordController> {const ChangePasswordScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 29.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_enter_your_old_password".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 7.v), _buildOldPassword(), SizedBox(height: 21.v), Text("msg_enter_your_new_password".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 7.v), _buildNewPassword(), SizedBox(height: 21.v), Text("msg_confirm_your_new".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 7.v), _buildConfirmNewPassword(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSaveButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_change_password".tr)); } 
/// Section Widget
Widget _buildOldPassword() { return Obx(() => CustomTextFormField(controller: controller.oldPasswordController, prefix: Padding(padding: EdgeInsets.fromLTRB(16.h, 18.v, 30.h, 18.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.fromLTRB(16.h, 18.v, 30.h, 18.v)), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 8.v, width: 92.h)])), prefixConstraints: BoxConstraints(maxHeight: 56.v), suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray30020x20, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: controller.isShowPassword.value)); } 
/// Section Widget
Widget _buildNewPassword() { return Obx(() => CustomTextFormField(controller: controller.newPasswordController, prefix: Padding(padding: EdgeInsets.fromLTRB(16.h, 18.v, 30.h, 18.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.fromLTRB(16.h, 18.v, 30.h, 18.v)), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 8.v, width: 92.h)])), prefixConstraints: BoxConstraints(maxHeight: 56.v), suffix: InkWell(onTap: () {controller.isShowPassword1.value = !controller.isShowPassword1.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray30020x20, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: controller.isShowPassword1.value)); } 
/// Section Widget
Widget _buildConfirmNewPassword() { return Obx(() => CustomTextFormField(controller: controller.confirmNewPasswordController, textInputAction: TextInputAction.done, prefix: Padding(padding: EdgeInsets.fromLTRB(16.h, 18.v, 30.h, 18.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.fromLTRB(16.h, 18.v, 30.h, 18.v)), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 8.v, width: 92.h)])), prefixConstraints: BoxConstraints(maxHeight: 56.v), suffix: InkWell(onTap: () {controller.isShowPassword2.value = !controller.isShowPassword2.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray30020x20, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: controller.isShowPassword2.value)); } 
/// Section Widget
Widget _buildSaveButton() { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }