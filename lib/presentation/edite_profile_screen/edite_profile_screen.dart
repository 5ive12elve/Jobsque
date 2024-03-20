import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:final_project/core/app_export.dart';
import 'controller/edite_profile_controller.dart';
import 'package:flutter/material.dart';

class EditeProfileScreen extends GetWidget<EditeProfileController> {

  EditeProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 36.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.h),
                        color: Colors.grey[200], // Set the background color to light grey
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: 'assets/images/img_user_blue_gray_300.svg',
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_change_photo".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
                SizedBox(height: 24.v),
                Text(
                  "lbl_name".tr,
                  style: CustomTextStyles.titleMediumBluegray300,
                ),
                SizedBox(height: 6.v),
                _buildNameEditText(),
                SizedBox(height: 16.v),
                Text(
                  "lbl_bio".tr,
                  style: CustomTextStyles.titleMediumBluegray300,
                ),
                SizedBox(height: 6.v),
                _buildBioEditText(),
                SizedBox(height: 16.v),
                Text(
                  "Password".tr,
                  style: CustomTextStyles.titleMediumBluegray300,
                ),
                SizedBox(height: 6.v),
                _buildPasswordEditText(),
                SizedBox(height: 17.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSaveButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 65.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 24.h),
        onTap: () {
          onTapArrowLeft();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(text: "Edit Profile"),
    );
  }

  /// Section Widget
  Widget _buildNameEditText() {
    final String username = Get.arguments ?? "";
    return CustomTextFormField(
      controller: controller.nameEditTextController,
      hintText: username.isNotEmpty ? username : "Default",
      hintStyle: CustomTextStyles.titleMediumGray60001,
      contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
    );
  }

  /// Section Widget
  Widget _buildBioEditText() {
    return CustomTextFormField(
      controller: controller.bioEditTextController,
      hintText: "msg_senior_ui_ux_designer".tr,
      hintStyle: CustomTextStyles.titleMediumGray60001,
      contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText() {
    return CustomTextFormField(
      controller: controller.passEditTextController,
      hintText: "********".tr,
      hintStyle: CustomTextStyles.titleMediumGray60001,
      contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
    );
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
      text: "lbl_save".tr,
      margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
      onPressed: () {
        String name = controller.nameEditTextController.text;
        String password = controller.passEditTextController.text;
        controller.updateProfile(name, password);
      },
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
