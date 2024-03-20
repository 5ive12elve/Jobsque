import '../portfolio_screen/widgets/portfolio_item_widget.dart';
import 'controller/portfolio_controller.dart';
import 'models/portfolio_item_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_icon_button.dart';
import 'package:final_project/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class PortfolioScreen extends GetWidget<PortfolioController> {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 37.v),
                child: Column(children: [
                  _buildAddPortfolio(),
                  SizedBox(height: 24.v),
                  _buildPortfolio()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 70.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_portfolio".tr));
  }

  /// Section Widget
  Widget _buildAddPortfolio() {
    return SizedBox(
        height: 261.v,
        width: 327.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 2.adaptSize,
                  width: 2.adaptSize,
                  margin: EdgeInsets.only(right: 35.h, bottom: 95.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                      borderRadius: BorderRadius.circular(1.h)))),
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_add_portfolio_here".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 14.v),
                    DottedBorder(
                        color: theme.colorScheme.primary,
                        padding: EdgeInsets.only(
                            left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                        strokeWidth: 1.h,
                        radius: Radius.circular(8),
                        borderType: BorderType.RRect,
                        dashPattern: [5, 5],
                        child: Container(
                            padding: EdgeInsets.all(14.h),
                            decoration: AppDecoration.outlinePrimary1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomIconButton(
                                      height: 56.adaptSize,
                                      width: 56.adaptSize,
                                      padding: EdgeInsets.all(12.h),
                                      decoration:
                                          IconButtonStyleHelper.fillBlue,
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVuesaxBoldDocumentUpload)),
                                  SizedBox(height: 18.v),
                                  Text("msg_upload_your_other".tr,
                                      style: CustomTextStyles.titleMedium18),
                                  SizedBox(height: 7.v),
                                  Text("msg_max_file_size_10".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray60001),
                                  SizedBox(height: 15.v),
                                  CustomOutlinedButton(
                                      height: 42.v,
                                      text: "lbl_add_file".tr,
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 10.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUpload,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize)),
                                      buttonStyle:
                                          CustomButtonStyles.outlinePrimary,
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallPrimary),
                                ])))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildPortfolio() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount:
            controller.portfolioModelObj.value.portfolioItemList.value.length,
        itemBuilder: (context, index) {
          PortfolioItemModel model =
              controller.portfolioModelObj.value.portfolioItemList.value[index];
          return PortfolioItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
