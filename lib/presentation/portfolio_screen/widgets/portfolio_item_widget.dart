import '../controller/portfolio_controller.dart';
import '../models/portfolio_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PortfolioItemWidget extends StatelessWidget {
  PortfolioItemWidget(
    this.portfolioItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PortfolioItemModel portfolioItemModelObj;

  var controller = Get.find<PortfolioController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogo,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    portfolioItemModelObj.uIUXDesigner!.value,
                    style: CustomTextStyles.titleSmallPrimaryContainer,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    portfolioItemModelObj.filesize!.value,
                    style: CustomTextStyles.bodySmallGray60001,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 8.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}
