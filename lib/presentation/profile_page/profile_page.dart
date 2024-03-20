import '../profile/controller/profile_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  SizedBox(height: 17.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                Text("msg_rafif_dian_axelingga".tr,
                                    style: theme.textTheme.titleLarge),
                                SizedBox(height: 4.v),
                                Text("msg_senior_ui_ux_designer".tr,
                                    style: theme.textTheme.bodyMedium),
                                SizedBox(height: 24.v),
                                _buildInformationRow(),
                                SizedBox(height: 36.v),
                                _buildFrameRow(),
                                SizedBox(height: 22.v),
                                Container(
                                    width: 322.h,
                                    margin: EdgeInsets.only(
                                        left: 24.h, right: 28.h),
                                    child: Text(
                                        "msg_i_m_rafif_dian_axelingga".tr,
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.40))),
                                SizedBox(height: 34.v),
                                Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.h, vertical: 9.v),
                                    decoration: AppDecoration.outlineGray,
                                    child: Text("lbl_general".tr,
                                        style: theme.textTheme.titleSmall)),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: _buildPortfolio(
                                        userImage: ImageConstant.imgUser,
                                        portfolio: "lbl_edit_profile".tr)),
                                SizedBox(height: 4.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: _buildPortfolio(
                                        userImage: ImageConstant.imgFolder,
                                        portfolio: "lbl_portfolio".tr)),
                                SizedBox(height: 4.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: _buildPortfolio(
                                        userImage:
                                            ImageConstant.imgSettingsPrimary,
                                        portfolio: "lbl_langauge".tr)),
                                SizedBox(height: 4.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: _buildPortfolio(
                                        userImage: ImageConstant
                                            .imgNotificationPrimary,
                                        portfolio: "lbl_notification".tr)),
                                SizedBox(height: 4.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: CustomTextFormField(
                                        hintText: "msg_login_and_security".tr,
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputAction: TextInputAction.done,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                10.h, 24.v, 22.h, 24.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLock,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 68.v),
                                        suffix: Container(
                                            margin: EdgeInsets.only(
                                                left: 30.h,
                                                top: 26.v,
                                                bottom: 26.v),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowRightPrimarycontainer,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize)),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 68.v),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 24.v),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray,
                                        fillColor: appTheme.whiteA700)),
                                SizedBox(height: 32.v),
                                Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.h, vertical: 9.v),
                                    decoration: AppDecoration.outlineGray,
                                    child: Text("lbl_others".tr,
                                        style: theme.textTheme.titleSmall)),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: _buildHelpCenter(
                                        helpCenterText: "lbl_accesibility".tr)),
                                SizedBox(height: 4.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: _buildHelpCenter(
                                        helpCenterText: "lbl_help_center".tr)),
                                SizedBox(height: 4.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: _buildHelpCenter(
                                        helpCenterText:
                                            "msg_terms_conditions".tr)),
                                SizedBox(height: 4.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: _buildHelpCenter(
                                        helpCenterText:
                                            "lbl_privacy_policy".tr))
                              ]))))
                ]))));
  }


  /// Section Widget
  Widget _buildInformationRow() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
        decoration: AppDecoration.fillGray50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 2.v),
                  child: Column(children: [
                    Text("lbl_applied".tr, style: theme.textTheme.titleSmall),
                    SizedBox(height: 8.v),
                    Text("lbl_46".tr, style: theme.textTheme.titleLarge)
                  ])),
              Spacer(),
              SizedBox(
                  height: 50.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.blueGray100,
                      indent: 3.h,
                      endIndent: 3.h)),
              Padding(
                  padding: EdgeInsets.only(left: 26.h, top: 1.v),
                  child: Column(children: [
                    Text("lbl_reviewed".tr, style: theme.textTheme.titleSmall),
                    SizedBox(height: 9.v),
                    Text("lbl_23".tr, style: theme.textTheme.titleLarge)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: SizedBox(
                      height: 50.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.blueGray100,
                          indent: 3.h,
                          endIndent: 3.h))),
              Padding(
                  padding: EdgeInsets.only(left: 23.h, top: 1.v),
                  child: Column(children: [
                    Text("lbl_contacted".tr, style: theme.textTheme.titleSmall),
                    SizedBox(height: 9.v),
                    Text("lbl_16".tr, style: theme.textTheme.titleLarge)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_about".tr, style: CustomTextStyles.titleMediumGray60001),
          Text("lbl_edit".tr, style: CustomTextStyles.titleSmallPrimary)
        ]));
  }

  /// Common widget
  Widget _buildPortfolio({
    required String userImage,
    required String portfolio,
  }) {
    return Container(
        padding: EdgeInsets.only(top: 14.v, bottom: 13.v),
        decoration: AppDecoration.outlineGray200,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.fillBlue
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                  child: CustomImageView(
                      imagePath: userImage,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 10.v),
                  child: Text(portfolio,
                      style: theme.textTheme.bodyLarge!.copyWith(
                          color: theme.colorScheme.primaryContainer))),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimarycontainer,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(top: 12.v, bottom: 10.v))
            ]));
  }

  /// Common widget
  Widget _buildHelpCenter({required String helpCenterText}) {
    return Container(
        padding: EdgeInsets.only(top: 13.v, bottom: 12.v),
        decoration: AppDecoration.outlineGray200,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(helpCenterText,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.colorScheme.primaryContainer))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(top: 2.v, bottom: 3.v))
        ]));
  }

}
