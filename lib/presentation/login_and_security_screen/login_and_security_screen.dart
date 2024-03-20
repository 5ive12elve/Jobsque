import 'controller/login_and_security_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginAndSecurityScreen extends GetWidget<LoginAndSecurityController> {
  const LoginAndSecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
                      decoration: AppDecoration.outlineGray,
                      child: Text("lbl_accont_access".tr,
                          style: CustomTextStyles.titleMediumGray60001)),
                  SizedBox(height: 12.v),
                  _buildAccountAccess(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        height: 70.v,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "msg_login_and_security".tr));
  }

  /// Section Widget
  Widget _buildAccountAccess() {
    return SizedBox(
        height: 330.v,
        width: 327.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 2.adaptSize,
                  width: 2.adaptSize,
                  margin: EdgeInsets.only(top: 108.v, right: 35.h),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                      borderRadius: BorderRadius.circular(1.h)))),
          Align(
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                _buildTwoStepVerification(
                    twoStepVerificationText: "lbl_email_address".tr,
                    nonActiveText: "msg_rafifdian12_gmail_com".tr),
                _buildChangePassword(changePasswordText: "lbl_phone_number".tr),
                _buildChangePassword(
                    changePasswordText: "lbl_change_password".tr),
                _buildTwoStepVerification(
                    twoStepVerificationText: "msg_two_step_verification".tr,
                    nonActiveText: "lbl_non_active".tr),
                _buildChangePassword(changePasswordText: "lbl_face_id".tr)
              ]))
        ]));
  }

  /// Common widget
  Widget _buildChangePassword({required String changePasswordText}) {
    return Container(
        padding: EdgeInsets.only(top: 19.v, bottom: 18.v),
        decoration: AppDecoration.outlineBluegray1001,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(changePasswordText,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.colorScheme.primaryContainer))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(top: 2.v, bottom: 3.v))
        ]));
  }

  /// Common widget
  Widget _buildTwoStepVerification({
    required String twoStepVerificationText,
    required String nonActiveText,
  }) {
    return Container(
        padding: EdgeInsets.only(top: 19.v, bottom: 18.v),
        decoration: AppDecoration.outlineBluegray1001,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(twoStepVerificationText,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.colorScheme.primaryContainer))),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Text(nonActiveText,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: appTheme.gray60001))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 12.h, top: 2.v, bottom: 3.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
