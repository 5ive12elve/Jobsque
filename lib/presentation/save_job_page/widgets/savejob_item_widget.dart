import '../controller/save_job_controller.dart';
import '../models/savejob_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SavejobItemWidget extends StatelessWidget {
  SavejobItemWidget(
    this.savejobItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SavejobItemModel savejobItemModelObj;

  var controller = Get.find<SaveJobController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 9.v,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Obx(
                    () => CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      child: CustomImageView(
                        imagePath: savejobItemModelObj.twitter!.value,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          savejobItemModelObj.seniorUIDesigner!.value,
                          style: CustomTextStyles.titleMedium18,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Obx(
                        () => Text(
                          savejobItemModelObj.twitterJakarta!.value,
                          style: CustomTextStyles.bodySmallBluegray800,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMore,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 99.h,
                    top: 8.v,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    savejobItemModelObj.duration!.value,
                    style: CustomTextStyles.bodySmallBluegray800,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgClockGreen800,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(
                    left: 108.h,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Obx(
                    () => Text(
                      savejobItemModelObj.beAnEarlyApplicant!.value,
                      style: CustomTextStyles.bodySmallBluegray800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
