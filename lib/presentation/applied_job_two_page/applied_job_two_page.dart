import 'controller/applied_job_two_controller.dart';
import 'models/applied_job_two_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

class AppliedJobTwoPage extends StatelessWidget {
  AppliedJobTwoPage({Key? key})
      : super(
          key: key,
        );

  AppliedJobTwoController controller =
      Get.put(AppliedJobTwoController(AppliedJobTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 87.v),
              _buildMainColumn(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainColumn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(right: 96.h),
              decoration: BoxDecoration(
                color: appTheme.blue5002,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  top: 53.v,
                  bottom: 65.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blue5002,
                  borderRadius: BorderRadius.circular(
                    7.h,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 9.h),
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.fillGray10001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder66,
                ),
                child: Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.fillBlue5001.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder50,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCloseBlueGray9000260x60,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Container(
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  top: 95.v,
                  bottom: 19.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blue5002,
                  borderRadius: BorderRadius.circular(
                    9.h,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 29.v),
          Text(
            "msg_no_applications".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: 310.h,
            child: Text(
              "msg_if_there_is_an_application".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeGray60001.copyWith(
                height: 1.30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
