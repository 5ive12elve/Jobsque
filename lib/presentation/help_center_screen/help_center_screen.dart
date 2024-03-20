import '../help_center_screen/widgets/expandablelist_item_widget.dart';import 'controller/help_center_controller.dart';import 'models/expandablelist_item_model.dart';import 'package:final_project/core/app_export.dart';import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';import 'package:final_project/widgets/app_bar/custom_app_bar.dart';import 'package:final_project/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class HelpCenterScreen extends GetWidget<HelpCenterController> {const HelpCenterScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v), child: Column(children: [CustomTextFormField(controller: controller.searchController, hintText: "msg_what_can_we_help".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.v), child: CustomImageView(imagePath: ImageConstant.imgSearchBlueGray90002, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), contentPadding: EdgeInsets.only(top: 14.v, right: 30.h, bottom: 14.v), borderDecoration: TextFormFieldStyleHelper.outlineBlueGray, filled: false), SizedBox(height: 28.v), _buildExpandableList(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_help_center2".tr)); } 
/// Section Widget
Widget _buildExpandableList() { return Obx(() => ListView.builder(shrinkWrap: true, itemCount: controller.helpCenterModelObj.value.expandablelistItemList.value.length, itemBuilder: (context, index) {ExpandablelistItemModel model = controller.helpCenterModelObj.value.expandablelistItemList.value[index]; return ExpandablelistItemWidget(model);})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }