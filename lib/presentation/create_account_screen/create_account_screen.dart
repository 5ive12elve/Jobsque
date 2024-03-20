import 'package:flutter/material.dart';
import 'package:final_project/core/app_export.dart';
import '../onboarding_one_screen/onboarding_one_screen.dart';
import 'controller/create_account_controller.dart';
import 'package:final_project/core/utils/validation_functions.dart';
import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:final_project/widgets/custom_outlined_button.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';

class CreateAccountScreen extends GetWidget<CreateAccountController> {
 CreateAccountScreen({Key? key}) : super(key: key);

 GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
   child: Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: _buildAppBar(),
    body: Form(
     key: _formKey,
     child: Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 36.v),
      child: Column(
       children: [
        SizedBox(height: 5.v),
        Align(
         alignment: Alignment.centerLeft,
         child: Text("Create Account", style: theme.textTheme.headlineMedium),
        ),
        SizedBox(height: 12.v),
        Text("Please create an account to find your dream job", style: CustomTextStyles.bodyLargeGray60001),
        SizedBox(height: 43.v),
        _buildCreateAccountInput1(),
        SizedBox(height: 16.v),
        _buildCreateAccountInput2(),
        SizedBox(height: 16.v),
        _buildCreateAccountInput3(),
        SizedBox(height: 12.v),
        Align(
         alignment: Alignment.centerLeft,
         child: Text(
          "msg_password_must_be".tr,
          style: TextStyle(
           color: controller.createAccountInput3Controller.text.length >= 8
               ? CustomTextStyles.bodyLargeLightgreenA700.color
               : appTheme.red50001,
           // Add other text style properties if needed
          ),
         ),
        ),

        Spacer(),
        Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Text("msg_already_have_an".tr, style: CustomTextStyles.titleSmallBluegray300),
          Padding(
           padding: EdgeInsets.only(left: 6.h),
           child: GestureDetector(
            onTap: () {
             Get.offNamed(AppRoutes.loginOneScreen);
            },
            child: Text(
             "lbl_login".tr,
             style: CustomTextStyles.titleSmallPrimary,
             // Add more styling if needed
            ),
           ),
          ),
         ],
        ),

        SizedBox(height: 24.v),
        _buildCreateAccountButton(),
        SizedBox(height: 20.v),
        _buildOrRow(),
       ],
      ),
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
      Get.off(OnboardingOneScreen());
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




 Widget _buildCreateAccountInput1() {
  return CustomTextFormField(
   controller: controller.createAccountInput1Controller,
   hintText: 'Username',
   prefix: Container(
    margin: EdgeInsets.fromLTRB(16.h, 18.v, 12.h, 18.v),
    child: CustomImageView(
     imagePath: ImageConstant.imgUserBlueGray30020x20,
     height: 20.adaptSize,
     width: 20.adaptSize,
    ),
   ),
   prefixConstraints: BoxConstraints(maxHeight: 56.v),
  );
 }

 Widget _buildCreateAccountInput2() {
  return CustomTextFormField(
   controller: controller.createAccountInput2Controller,
   hintText: 'Email',
   textInputType: TextInputType.emailAddress,
   prefix: Container(
    margin: EdgeInsets.fromLTRB(16.h, 18.v, 12.h, 18.v),
    child: CustomImageView(
     imagePath: ImageConstant.imgSms,
     height: 20.adaptSize,
     width: 20.adaptSize,
    ),
   ),
   prefixConstraints: BoxConstraints(maxHeight: 56.v),
   validator: (value) {
    if (value == null || (!isValidEmail(value, isRequired: true))) {
     return "err_msg_please_enter_valid_email".tr;
    }
    return null;
   },
  );
 }

 Widget _buildCreateAccountInput3() {
  return Obx(
       () => CustomTextFormField(
    controller: controller.createAccountInput3Controller,
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
    prefixConstraints: BoxConstraints(maxHeight: 56.v),
    suffix: InkWell(
     onTap: () {
      controller.isShowPassword.value = !controller.isShowPassword.value;
     },
     child: Container(
      margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v),
      child: Icon(
       controller.isShowPassword.value
           ? Icons.visibility
           : Icons.visibility_off,
       color: appTheme.gray600, // Change to your desired grey color
       size: 20.adaptSize,
      ),
     ),
    ),
    suffixConstraints: BoxConstraints(maxHeight: 56.v),
    obscureText: !controller.isShowPassword.value,
    hintStyle: controller.createAccountInput3Controller.text.length >= 8
        ? CustomTextStyles.bodyLargeLightgreenA700 // Change to your desired style
        : CustomTextStyles.bodyLargeRed50001,
    borderDecoration: OutlineInputBorder(
     borderRadius: BorderRadius.circular(8.h),
     borderSide: BorderSide(
      color: controller.createAccountInput3Controller.text.length >= 8
          ? theme.colorScheme.primary // Change to your desired blue color
          : appTheme.red50001,
      width: 1,
     ),
    ),
   ),
  );
 }

 Widget _buildCreateAccountButton() {
  return CustomElevatedButton(
   text: "lbl_create_account".tr,
   onPressed: () {
    controller.register(); // Call the register function from the controller
   },
  );
 }


 Widget _buildOrRow() {
  return Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
    Padding(
     padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
     child: SizedBox(
      width: 64.h,
      child: Divider(color: appTheme.blueGray100),
     ),
    ),
    Text("msg_or_sign_up_with".tr, style: theme.textTheme.bodyMedium),
    Padding(
     padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
     child: SizedBox(
      width: 64.h,
      child: Divider(color: appTheme.blueGray100),
     ),
    ),
   ],
  );
 }

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

 Widget _buildButton() {
  return Padding(
   padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
   child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [_buildGoogleButton(), _buildFacebookButton()],
   ),
  );
 }

}
