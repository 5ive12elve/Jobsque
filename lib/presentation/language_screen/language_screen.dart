import '../language_screen/widgets/languagelist_item_widget.dart';
import 'controller/language_controller.dart';
import 'models/languagelist_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends GetWidget<LanguageController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
                child: Column(children: [
                  _buildLanguageList()
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
        title: AppbarSubtitle(text: "lbl_language".tr));
  }

  /// Section Widget
  Widget _buildLanguageList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.v);
            },
            itemCount: controller
                .languageModelObj.value.languagelistItemList.value.length,
            itemBuilder: (context, index) {
              LanguagelistItemModel model = controller
                  .languageModelObj.value.languagelistItemList.value[index];
              return LanguagelistItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
