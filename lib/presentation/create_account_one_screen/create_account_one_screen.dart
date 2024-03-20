import 'package:final_project/presentation/login_one_screen/login_one_screen.dart';
import 'controller/create_account_one_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CreateAccountOneScreen extends GetWidget<CreateAccountOneController> {
  const CreateAccountOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapImgArrowLeft();
                      }),
                  SizedBox(height: 97.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(right: 104.h),
                          decoration: BoxDecoration(
                              color: appTheme.blue5002,
                              borderRadius: BorderRadius.circular(5.h)))),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(top: 53.v, bottom: 65.v),
                            decoration: BoxDecoration(
                                color: appTheme.blue5002,
                                borderRadius: BorderRadius.circular(7.h))),
                        Container(
                            margin: EdgeInsets.only(left: 9.h),
                            padding: EdgeInsets.all(16.h),
                            decoration: AppDecoration.fillGray10001.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder66),
                            child: Container(
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                                padding: EdgeInsets.all(20.h),
                                decoration: AppDecoration.fillBlue5001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder50),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgUserPrimary,
                                    height: 60.adaptSize,
                                    width: 60.adaptSize,
                                    alignment: Alignment.center))),
                        Container(
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                            margin: EdgeInsets.only(top: 95.v, bottom: 19.v),
                            decoration: BoxDecoration(
                                color: appTheme.blue5002,
                                borderRadius: BorderRadius.circular(9.h)))
                      ]),
                  SizedBox(height: 29.v),
                  Text("msg_your_account_has".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 9.v),
                  Container(
                      width: 267.h,
                      margin: EdgeInsets.only(left: 30.h, right: 29.h),
                      child: Text("msg_we_have_customized".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(height: 1.40))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildGetStartedButton()));
  }

  /// Section Widget
  Widget _buildGetStartedButton() {
    return CustomElevatedButton(
        text: "lbl_get_started".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
      onPressed: (){
          Get.offAll(LoginOneScreen());
      },
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
