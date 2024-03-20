import 'package:final_project/presentation/create_account_screen/create_account_screen.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../applied_job_one_screen/database_helper/database_helper.dart';
import '../homescreen/controller/homescreen_controller.dart';
import '../profile/controller/profile_controller.dart';
import '../root_screen/root_screen.dart';
import 'controller/login_one_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_checkbox_button.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:final_project/widgets/custom_outlined_button.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginOneScreen extends GetWidget<LoginOneController> {
  final ProfileController profileController = Get.put(ProfileController());
  final HomescreenController homescreenController = Get.put(HomescreenController());
  LoginOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 36.h,
            vertical: 36.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_login".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_please_login_to".tr,
                  style: CustomTextStyles.bodyLargeGray60001,
                ),
              ),
              SizedBox(height: 43.v),
              _buildInput(),
              SizedBox(height: 16.v),
              _buildPassword(),
              SizedBox(height: 19.v),
              _buildRememberMeForgot(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "msg_dont_t_have_an_account".tr,
                      style: CustomTextStyles.titleSmallBluegray300,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_register".tr,
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.v),
              _buildLoginButton(),
              SizedBox(height: 20.v),
              _buildOr(),
              SizedBox(height: 7.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButton(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 88.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 22.h, right: 2.h),
        onTap: () {
          Get.toNamed(AppRoutes.createAccountScreen);
        },
      ),
      actions: [
        Container(
          height: 19,
          width: 81,
          margin: EdgeInsets.fromLTRB(200.h, 36.v, 36.h, 1.v),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset( 'assets/images/label_logo.png',
                width: 81,
                height: 19,
              )
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInput() {
    return CustomTextFormField(
      controller: controller.inputController,
      hintText: "Username",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 18.v, 12.h, 18.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgUserBlueGray30020x20,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.passwordController,
        hintText: 'Password',
        textInputAction: TextInputAction.done,
        prefix: Padding(
          padding: EdgeInsets.fromLTRB(16.h, 18.v, 12.h, 18.v),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLockBlueGray9000220x20,
              ),
            ],
          ),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 56.v,),
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgCloseBlueGray90002,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 56.v,
        ),
        obscureText: controller.isShowPassword.value,
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMeForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Obx(
            () => CustomCheckboxButton(
              text: "lbl_remember_me".tr,
              value: controller.rememberme.value,
              onChange: (value) {
                controller.rememberme.value = value;
              },
            ),
          ),
        ),
        Text(
          "msg_forgot_password".tr,
          style: CustomTextStyles.bodyMediumPrimary,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(
      text: "lbl_login".tr,
      onPressed: () async {
        bool loginSuccess = await controller.login(controller.inputController.text.trim(), controller.passwordController.text.trim());

        if (loginSuccess) {
          // Fetch user profile data
          await profileController.loadUserProfile();

          // Access user details
          final userProfile = profileController.userProfile.value;
          if (userProfile != null) {
            // Create or fetch user in the database
            final dbHelper = DatabaseHelper();
            final user = Userlcl(email: userProfile.email);

            // Insert the user into the database if not already inserted
            final userId = await dbHelper.insertUser(user);
            if (userId == null) {
              // User already exists, do not insert again
              print('User already exists in the database');
            } else {
              // User inserted successfully or user doesn't exist, insert profile as well
              final insertedUserId = userId ?? userProfile.id; // Use existing user ID if available
              final profile = Profile(userEmail: userProfile.email, photo: 'assets/images/img_user_blue_gray_300.svg');
              await dbHelper.insertProfile(profile);
              print('User ID in the database: $insertedUserId');
            }

            // Fetch jobs associated with the user (you may modify this based on your requirements)
            await homescreenController.loadHomescreenData();

            // Access job details
            final homescreenData = homescreenController.homescreenData.value;
            if (homescreenData != null && homescreenData.data != null && homescreenData.data!.isNotEmpty) {
              final firstJob = homescreenData.data![0]; // Access the first job
              print('Job ID: ${firstJob.id}');
              print('Job Name: ${firstJob.name}');
              print('Job Description: ${firstJob.jobDescription}');
            }
          }
          Get.offAll(RootScreen());
        }
      },
    );
  }

  /// Section Widget
  Widget _buildOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 8.v,
          ),
          child: SizedBox(
            width: 70.h,
            child: Divider(
              color: appTheme.blueGray100,
            ),
          ),
        ),
        Text(
          "msg_or_login_with_account".tr,
          style: theme.textTheme.bodyMedium,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 8.v,
          ),
          child: SizedBox(
            width: 70.h,
            child: Divider(
              color: appTheme.blueGray100,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoogleButton() {
    return CustomOutlinedButton(
      width: 154.h,
      text: "lbl_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFullcolorsGoogle,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebookButton() {
    return CustomOutlinedButton(
      width: 154.h,
      text: "lbl_facebook".tr,
      margin: EdgeInsets.only(left: 19.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildGoogleButton(),
          _buildFacebookButton(),
        ],
      ),
    );
  }
}
