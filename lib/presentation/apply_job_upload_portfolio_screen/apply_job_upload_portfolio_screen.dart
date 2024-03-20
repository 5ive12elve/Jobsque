import 'controller/apply_job_upload_portfolio_controller.dart';import 'package:final_project/core/app_export.dart';import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';import 'package:final_project/widgets/app_bar/custom_app_bar.dart';import 'package:final_project/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class ApplyJobUploadPortfolioScreen extends GetWidget<ApplyJobUploadPortfolioController> {const ApplyJobUploadPortfolioScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 37.h, top: 104.v, right: 37.h), child: Column(children: [Align(alignment: Alignment.centerRight, child: Container(height: 10.adaptSize, width: 10.adaptSize, margin: EdgeInsets.only(right: 91.h), decoration: BoxDecoration(color: appTheme.blue5002, borderRadius: BorderRadius.circular(5.h)))), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(top: 53.v, bottom: 65.v), decoration: BoxDecoration(color: appTheme.blue5002, borderRadius: BorderRadius.circular(7.h))), Container(margin: EdgeInsets.only(left: 9.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillGray10001.copyWith(borderRadius: BorderRadiusStyle.circleBorder66), child: Container(height: 100.adaptSize, width: 100.adaptSize, padding: EdgeInsets.all(20.h), decoration: AppDecoration.fillBlue5001.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: CustomImageView(imagePath: ImageConstant.imgClipboardTick, height: 60.adaptSize, width: 60.adaptSize, alignment: Alignment.center))), Container(height: 18.adaptSize, width: 18.adaptSize, margin: EdgeInsets.only(top: 95.v, bottom: 19.v), decoration: BoxDecoration(color: appTheme.blue5002, borderRadius: BorderRadius.circular(9.h)))]), SizedBox(height: 27.v), SizedBox(width: 202.h, child: Text("msg_your_data_has_been".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineSmall!.copyWith(height: 1.40))), SizedBox(height: 8.v), SizedBox(width: 300.h, child: Text("msg_you_will_get_a_message".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLargeGray60001.copyWith(height: 1.30))), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBackToHome())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_apply_job".tr)); } 
/// Section Widget
Widget _buildBackToHome() { return CustomElevatedButton(text: "lbl_back_to_home".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }