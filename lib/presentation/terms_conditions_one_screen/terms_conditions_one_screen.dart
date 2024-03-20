import 'controller/terms_conditions_one_controller.dart';import 'package:final_project/core/app_export.dart';import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';import 'package:final_project/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class TermsConditionsOneScreen extends GetWidget<TermsConditionsOneController> {const TermsConditionsOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_lorem_ipsum_dolor3".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 12.v), SizedBox(width: 327.h, child: Text("msg_lorem_ipsum_dolor4".tr, maxLines: 11, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.40))), SizedBox(height: 20.v), Align(alignment: Alignment.centerLeft, child: Text("msg_lorem_ipsum_dolor3".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 12.v), SizedBox(width: 324.h, child: Text("msg_nunc_quis_bibendum".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.40))), SizedBox(height: 10.v), _buildFrame(), SizedBox(height: 13.v), SizedBox(width: 327.h, child: Text("msg_lorem_ipsum_dolor5".tr, maxLines: 4, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.40))), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 55.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "msg_terms_conditions".tr)); } 
/// Section Widget
Widget _buildFrame() { return Container(padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 10.v), decoration: AppDecoration.fillGray, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), SizedBox(width: 297.h, child: Text("msg_nunc_quis_bibendum2".tr, maxLines: 6, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.40)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
