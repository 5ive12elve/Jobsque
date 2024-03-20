import '../applied_job_four_page/widgets/category20_item_widget.dart';
import 'controller/applied_job_four_controller.dart';
import 'models/applied_job_four_model.dart';
import 'models/category20_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:final_project/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AppliedJobFourPage extends StatelessWidget {
  AppliedJobFourPage({Key? key})
      : super(
          key: key,
        );

  AppliedJobFourController controller =
      Get.put(AppliedJobFourController(AppliedJobFourModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineGray,
                      child: Text(
                        "lbl_3_jobs".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 26.v),
                    _buildJobTitleRow(),
                    SizedBox(height: 17.v),
                    _buildCategoryPriceRow(),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: _buildContent(
                        userName: "lbl_1".tr,
                        userBiodata: "lbl_biodata".tr,
                        userTwo: "lbl_2".tr,
                        userTypeOfWork: "lbl_type_of_work".tr,
                        userThree: "lbl_3".tr,
                        userUploadPortfolio: "msg_upload_portfolio".tr,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
                    SizedBox(height: 21.v),
                    _buildJobTitleRow2(),
                    SizedBox(height: 17.v),
                    _buildCategoryPriceRow2(),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: _buildContent(
                        userName: "lbl_1".tr,
                        userBiodata: "lbl_biodata".tr,
                        userTwo: "lbl_2".tr,
                        userTypeOfWork: "lbl_type_of_work".tr,
                        userThree: "lbl_3".tr,
                        userUploadPortfolio: "msg_upload_portfolio".tr,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
                    SizedBox(height: 21.v),
                    _buildJobTitleRow3(),
                    SizedBox(height: 17.v),
                    _buildCategoryPriceRow3(),
                    SizedBox(height: 99.v),
                    Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
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
  Widget _buildJobTitleRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: IconButtonStyleHelper.gradientDeepPurpleAToIndigoA,
            child: CustomImageView(
              imagePath: ImageConstant.imgSpectrumLogoWhiteA70040x40,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_ui_ux_designer".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_spectrum_jakarta".tr,
                  style: CustomTextStyles.bodySmallBluegray800,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryPriceRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => Wrap(
              runSpacing: 12.v,
              spacing: 12.h,
              children: List<Widget>.generate(
                controller.appliedJobFourModelObj.value.category20ItemList.value
                    .length,
                (index) {
                  Category20ItemModel model = controller.appliedJobFourModelObj
                      .value.category20ItemList.value[index];

                  return Category20ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
            child: Text(
              "msg_posted_2_days_ago".tr,
              style: CustomTextStyles.bodySmallBluegray800,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJobTitleRow2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: IconButtonStyleHelper.fillIndigoA,
            child: CustomImageView(
              imagePath: ImageConstant.imgDiscordIndigoA200,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_ui_ux_designer".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_discord_jakarta".tr,
                  style: CustomTextStyles.bodySmallBluegray800,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkPrimarycontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryPriceRow2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 26.v,
            width: 69.h,
            text: "lbl_fulltime".tr,
            buttonStyle: CustomButtonStyles.fillBlueTL13,
            buttonTextStyle: theme.textTheme.bodySmall!,
          ),
          CustomElevatedButton(
            height: 26.v,
            width: 69.h,
            text: "lbl_remote".tr,
            margin: EdgeInsets.only(left: 12.h),
            buttonStyle: CustomButtonStyles.fillBlueTL13,
            buttonTextStyle: theme.textTheme.bodySmall!,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
            child: Text(
              "msg_posted_2_days_ago".tr,
              style: CustomTextStyles.bodySmallBluegray800,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJobTitleRow3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: IconButtonStyleHelper.fillSecondaryContainerTL8,
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_ui_ux_designer".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_invision_jakarta".tr,
                  style: CustomTextStyles.bodySmallBluegray800,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkPrimarycontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryPriceRow3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Text(
              "lbl_fulltime".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Text(
              "lbl_remote".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
            child: Text(
              "msg_posted_2_days_ago".tr,
              style: CustomTextStyles.bodySmallBluegray800,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContent({
    required String userName,
    required String userBiodata,
    required String userTwo,
    required String userTypeOfWork,
    required String userThree,
    required String userUploadPortfolio,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                Container(
                  width: 24.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Text(
                    userName,
                    style: CustomTextStyles.bodySmallGray100.copyWith(
                      color: appTheme.gray100,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Text(
                  userBiodata,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 25.v,
              bottom: 24.v,
            ),
            child: SizedBox(
              width: 50.h,
              child: Divider(
                color: theme.colorScheme.primary,
                indent: 26.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Container(
                  width: 24.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Text(
                    userTwo,
                    style: CustomTextStyles.bodySmallGray100.copyWith(
                      color: appTheme.gray100,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Text(
                  userTypeOfWork,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 25.v,
              bottom: 24.v,
            ),
            child: SizedBox(
              width: 37.h,
              child: Divider(
                color: appTheme.blueGray300,
                indent: 13.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Column(
              children: [
                Container(
                  width: 24.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlineBluegray300.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Text(
                    userThree,
                    style: CustomTextStyles.bodySmallBluegray300.copyWith(
                      color: appTheme.blueGray300,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Text(
                  userUploadPortfolio,
                  style: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
                    color: theme.colorScheme.primaryContainer,
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
