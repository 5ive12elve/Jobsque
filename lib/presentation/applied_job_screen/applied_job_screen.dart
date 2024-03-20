import 'controller/applied_job_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/core/utils/validation_functions.dart';
import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:final_project/widgets/custom_icon_button.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppliedJobScreen extends GetWidget<AppliedJobController> {
  AppliedJobScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text('Job Detail'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 15.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.h, right: 24.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 150.adaptSize,
                                            width: 150.adaptSize,
                                            padding: EdgeInsets.all(0.h),
                                            decoration: IconButtonStyleHelper
                                                .gradientDeepPurpleAToIndigoA,
                                            alignment: Alignment.center,
                                            child: CustomImageView(
                                                imagePath: Get.arguments?['jobImage'] ?? '',
                                            )
                                        ),
                                        SizedBox(height: 13.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                            Get.arguments?['jobName'] ?? '',
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                Get.arguments?['jobType'] ?? '',
                                                style: CustomTextStyles.titleSmallPrimary)),
                                        SizedBox(height: 4.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                Get.arguments?['compName'] ?? '',
                                                style: CustomTextStyles
                                                    .bodyMediumBluegray800)),
                                        SizedBox(height: 4.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                Get.arguments?['compEmail'] ?? '',
                                                style: CustomTextStyles.bodyMediumBluegray500)),

                                        SizedBox(height: 32.v),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                         _buildColumn("Fulltime"),
                                         _buildColumn("Remote"),
                                         _buildColumn("Design"),
                                        ],
                                       ),
                                        SizedBox(height: 32.v),
                                        Text("Location".tr,
                                            style: CustomTextStyles.titleMedium18),
                                        SizedBox(height: 6.v),
                                        Text(Get.arguments?['jobLoc'] ?? '',
                                            style: theme.textTheme.bodyMedium),
                                       SizedBox(height: 12.v),
                                        Text("Company about".tr,
                                            style: CustomTextStyles.titleSmallPrimary),
                                        SizedBox(height: 6.v),
                                        Text(Get.arguments?['compAbout'] ?? '',
                                            style: theme.textTheme.bodyMedium),
                                        SizedBox(height: 12.v),
                                        Text("Job Description".tr,
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 6.v),
                                        Text(Get.arguments?['jobDesc'] ?? '',
                                            style: theme.textTheme.bodyMedium),
                                        SizedBox(height: 12.v),
                                        Text("Skill Required".tr,
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 6.v),
                                        Text(Get.arguments?['skillReq'] ?? '',
                                            style: theme.textTheme.bodyMedium),
                                        SizedBox(height: 12.v),
                                        Text("Salary".tr,
                                            style: CustomTextStyles.titleMedium18),
                                        SizedBox(height: 6.v),
                                        Text(
                                            "EGP ${Get.arguments?['salary'] ?? ''}",
                                            style: CustomTextStyles.headlineLargeOnPrimary),
                                        SizedBox(height: 8.v),
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildNext()));
  }

  Widget _buildColumn(String text) {
   return Column(
    children: [
     Container(
      width: 90.h, // Adjust the width as needed
      height: 40.v, // Adjust the height as needed
      decoration: BoxDecoration(
       color: Color.fromARGB(44, 0, 152, 255), // Change the color as needed
       borderRadius: BorderRadius.circular(18), // Adjust the border radius as needed
      ),
      child: Center(
       child: Text(
        text,
        style: TextStyle(
         color: Colors.blueAccent, // Change the text color as needed
         fontWeight: FontWeight.w500,
        ),
       ),
      ),
     ),
    ],
   );
  }


  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
        text: "Apply now".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        onPressed: (){
          Get.toNamed(AppRoutes.appliedJobOneScreen, arguments: Get.arguments);
    },
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
