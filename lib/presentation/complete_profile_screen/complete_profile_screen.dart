import 'controller/complete_profile_controller.dart';import 'package:final_project/core/app_export.dart';import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';import 'package:final_project/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class CompleteProfileScreen extends GetWidget<CompleteProfileController> {const CompleteProfileScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), child: Column(children: [SizedBox(height: 100.adaptSize, width: 100.adaptSize, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(height: 100.adaptSize, width: 100.adaptSize, decoration: BoxDecoration(color: appTheme.gray200, borderRadius: BorderRadius.circular(50.h)))), Align(alignment: Alignment.center, child: SizedBox(height: 100.adaptSize, width: 100.adaptSize, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(height: 100.adaptSize, width: 100.adaptSize, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(50.h)))), Align(alignment: Alignment.center, child: Text("lbl_100".tr, style: CustomTextStyles.headlineSmallPrimary))])))])), SizedBox(height: 21.v), Text("lbl_completed".tr, style: CustomTextStyles.titleMediumPrimary), SizedBox(height: 9.v), Text("msg_complete_your_profile".tr, style: CustomTextStyles.bodyLargeGray60001), SizedBox(height: 33.v), _buildPersonalDetails(), SizedBox(height: 20.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.blueA100)), _buildEducation(), SizedBox(height: 20.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.blueA100)), _buildExperience(), SizedBox(height: 20.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.blueA100)), SizedBox(height: 5.v), _buildApplicationProfile()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "msg_complete_profile".tr)); } 
/// Section Widget
Widget _buildPersonalDetails() { return Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v), decoration: AppDecoration.outlineBlueA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgVuesaxBoldTickCirclePrimary, height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.symmetric(vertical: 18.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 12.h, top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_personal_details".tr, style: theme.textTheme.titleMedium), SizedBox(height: 6.v), SizedBox(width: 211.h, child: Text("msg_full_name_email".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray60001.copyWith(height: 1.50)))]))), CustomImageView(imagePath: ImageConstant.imgArrowRightPrimarycontainer, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 27.h, top: 22.v, bottom: 22.v))])); } 
/// Section Widget
Widget _buildEducation() { return Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v), decoration: AppDecoration.outlineBlueA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgVuesaxBoldTickCirclePrimary, height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.symmetric(vertical: 18.v)), Padding(padding: EdgeInsets.only(left: 12.h, top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_education".tr, style: theme.textTheme.titleMedium), SizedBox(height: 6.v), SizedBox(width: 180.h, child: Text("msg_enter_your_educational".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray60001.copyWith(height: 1.50)))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightPrimarycontainer, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 22.v))])); } 
/// Section Widget
Widget _buildExperience() { return Container(padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlueA100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [CustomImageView(imagePath: ImageConstant.imgVuesaxBoldTickCirclePrimary, height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.symmetric(vertical: 18.v)), Padding(padding: EdgeInsets.only(top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_experience".tr, style: theme.textTheme.titleMedium), SizedBox(height: 4.v), SizedBox(width: 226.h, child: Text("msg_enter_your_work".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray60001.copyWith(height: 1.50)))])), CustomImageView(imagePath: ImageConstant.imgArrowRightPrimarycontainer, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 22.v))])); } 
/// Section Widget
Widget _buildApplicationProfile() { return Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v), decoration: AppDecoration.outlineBlueA100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgVuesaxBoldTickCirclePrimary, height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.symmetric(vertical: 17.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 12.h, top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_portfolio".tr, style: theme.textTheme.titleMedium), SizedBox(height: 6.v), SizedBox(width: 210.h, child: Text("msg_create_your_portfolio".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray60001.copyWith(height: 1.50)))]))), CustomImageView(imagePath: ImageConstant.imgArrowRightPrimarycontainer, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 28.h, top: 21.v, bottom: 21.v))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
