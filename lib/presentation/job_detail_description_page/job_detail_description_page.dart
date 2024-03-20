import 'controller/job_detail_description_controller.dart';
import 'models/job_detail_description_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class JobDetailDescriptionPage extends StatelessWidget {
  JobDetailDescriptionPage({Key? key})
      : super(
          key: key,
        );

  JobDetailDescriptionController controller =
      Get.put(JobDetailDescriptionController(JobDetailDescriptionModel().obs));

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
              SizedBox(height: 26.v),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 23.h),
                      child: Text(
                        "lbl_job_description".tr,
                        style: CustomTextStyles.titleSmallPrimaryContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    width: 323.h,
                    margin: EdgeInsets.only(
                      left: 23.h,
                      right: 29.h,
                    ),
                    child: Text(
                      "msg_your_role_as_the".tr,
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallBluegray700.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.v),
                  _buildJobDescription(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJobDescription() {
    return SizedBox(
      height: 233.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                right: 27.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_skill_required".tr,
                    style: CustomTextStyles.titleSmallPrimaryContainer,
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    width: 319.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "msg_a_strong_visual".tr,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallBluegray700.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.gradientWhiteAToWhiteA700,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 25.v),
                  CustomElevatedButton(
                    text: "lbl_apply_now".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
