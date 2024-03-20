import 'controller/job_detail_company_controller.dart';
import 'models/job_detail_company_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/core/utils/validation_functions.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:final_project/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class JobDetailCompanyPage extends StatelessWidget {
  JobDetailCompanyPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  JobDetailCompanyController controller =
      Get.put(JobDetailCompanyController(JobDetailCompanyModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillWhiteA,
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "lbl_contact_us".tr,
                          style: CustomTextStyles.titleSmallPrimaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildContactUsContent(),
                    SizedBox(height: 26.v),
                    _buildApplyNowStack(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContactUsContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFloatingTextField(
            width: 157.h,
            controller: controller.emailController,
            labelText: "lbl_email".tr,
            labelStyle: CustomTextStyles.titleSmallPrimaryContainer,
            hintText: "lbl_email".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: CustomFloatingTextField(
              width: 157.h,
              controller: controller.weburlController,
              labelText: "lbl_website".tr,
              labelStyle: CustomTextStyles.titleSmallPrimaryContainer,
              hintText: "lbl_website".tr,
              textInputAction: TextInputAction.done,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyNowStack() {
    return SizedBox(
      height: 331.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_about_company".tr,
                    style: CustomTextStyles.titleSmallPrimaryContainer,
                  ),
                  SizedBox(height: 17.v),
                  SizedBox(
                    width: 327.h,
                    child: Text(
                      "msg_understanding_recruitment".tr,
                      maxLines: 16,
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
