import 'controller/email_address_controller.dart';import 'package:final_project/core/app_export.dart';import 'package:final_project/core/utils/validation_functions.dart';import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';import 'package:final_project/widgets/app_bar/custom_app_bar.dart';import 'package:final_project/widgets/custom_elevated_button.dart';import 'package:final_project/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class EmailAddressScreen extends GetWidget<EmailAddressController> {EmailAddressScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 44.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_main_e_mail_address".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 8.v), CustomTextFormField(controller: controller.emailController, hintText: "msg_rafifdian12_gmail_com".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 18.v, 12.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgSms, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSave())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 24.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_email_address".tr)); } 
/// Section Widget
Widget _buildSave() { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
