import '../homescreen_accepted_screen/widgets/category18_item_widget.dart';
import 'controller/homescreen_accepted_controller.dart';
import 'models/category18_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:final_project/widgets/app_bar/appbar_title.dart';
import 'package:final_project/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:final_project/widgets/custom_icon_button.dart';
import 'package:final_project/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';


class HomescreenAcceptedScreen extends GetWidget<HomescreenAcceptedController> {
  const HomescreenAcceptedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 24.h),
                          child: CustomSearchView(
                            controller: controller.searchController,
                            hintText: "lbl_search".tr,
                          ),
                        ),
                        SizedBox(height: 18.v),
                        Padding(
                          padding: EdgeInsets.only(right: 24.h),
                          child: _buildCategory1(
                            recentJobText: "lbl_suggested_job".tr,
                            viewAllText: "lbl_view_all".tr,
                          ),
                        ),
                        SizedBox(height: 18.v),
                        _buildApplyNow(),
                        SizedBox(height: 21.v),
                        Padding(
                          padding: EdgeInsets.only(right: 24.h),
                          child: _buildCategory1(
                            recentJobText: "lbl_recent_job".tr,
                            viewAllText: "lbl_view_all".tr,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildJobTittleSave(),
                        SizedBox(height: 16.v),
                        _buildCategoryPrice(),
                        SizedBox(height: 16.v),
                        Divider(
                          endIndent: 24.h,
                        ),
                        SizedBox(height: 21.v),
                        _buildJobTittleSave1(),
                        SizedBox(height: 16.v),
                        _buildCategoryPrice1(),
                        SizedBox(height: 16.v),
                        Divider(
                          endIndent: 24.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 100.v,
      title: Padding(
        padding: EdgeInsets.only(left: 24.h, top: 37.v),
        child: Column(
          children: [
            AppbarTitle(
              text: "msg_hi_rafif_dian".tr,
              margin: EdgeInsets.only(right: 73.h),
            ),
            SizedBox(height: 13.v),
            AppbarSubtitleFive(
              text: "msg_create_a_better".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(24.h, 25.v, 24.h, 1.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildApplyNow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 3.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.fillIndigo.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.fillWhiteA,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgZoomBlueA200,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_product_designer".tr,
                                style: CustomTextStyles.titleMediumWhiteA70018,
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "msg_zoom_united_states".tr,
                                style: CustomTextStyles.bodySmallBluegray300,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmark,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 8.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 21.v),
                    _buildCategory(
                      fulltimeStatus: "lbl_fulltime".tr,
                      remoteStatus: "lbl_remote".tr,
                      designStatus: "lbl_design".tr,
                    ),
                    SizedBox(height: 20.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 4.v,
                            bottom: 3.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_12k_15k".tr,
                                  style: CustomTextStyles.titleLargeWhiteA700,
                                ),
                                TextSpan(
                                  text: "lbl_month".tr,
                                  style: CustomTextStyles.labelLargeWhiteA700,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        CustomElevatedButton(
                          height: 32.v,
                          width: 96.h,
                          text: "lbl_apply_now".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeWhiteA700_3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 3.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          child: CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(3.h),
                            decoration: IconButtonStyleHelper.fillWhiteA,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSlackLogo,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Column(
                            children: [
                              Text(
                                "msg_product_designer".tr,
                                style: CustomTextStyles.titleMedium18,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "msg_slack_united_states".tr,
                                style: CustomTextStyles.bodySmallBluegray800,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmarkBlueGray90001,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 30.h,
                            top: 10.v,
                            bottom: 10.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.v),
                    _buildCategory(
                      fulltimeStatus: "lbl_fulltime".tr,
                      remoteStatus: "lbl_remote".tr,
                      designStatus: "lbl_design".tr,
                    ),
                    SizedBox(height: 20.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 4.v,
                            bottom: 3.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_12k_15k2".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                                TextSpan(
                                  text: "lbl_month".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        CustomElevatedButton(
                          height: 32.v,
                          width: 96.h,
                          text: "lbl_apply_now".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeWhiteA700_3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJobTittleSave() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(5.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTwitterWhiteA700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_senior_ui_designer".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_twitter_jakarta".tr,
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
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryPrice() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Row(
        children: [
          Obx(
            () => Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                controller.homescreenAcceptedModelObj.value.category18ItemList
                    .value.length,
                (index) {
                  Category18ItemModel model = controller
                      .homescreenAcceptedModelObj
                      .value
                      .category18ItemList
                      .value[index];

                  return Category18ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_15k".tr,
                    style: CustomTextStyles.titleMediumGreen800,
                  ),
                  TextSpan(
                    text: "lbl_month".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJobTittleSave1() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  "msg_senior_ux_designer".tr,
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
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryPrice1() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Row(
        children: [
          Container(
            width: 73.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Text(
              "lbl_fulltime".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Container(
            width: 72.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Text(
              "lbl_remote".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Container(
            width: 65.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Text(
              "lbl_senior".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_15k".tr,
                    style: CustomTextStyles.titleMediumGreen800,
                  ),
                  TextSpan(
                    text: "lbl_month".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCategory({
    required String fulltimeStatus,
    required String remoteStatus,
    required String designStatus,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 87.h,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillBlue.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Text(
            fulltimeStatus,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        Container(
          width: 86.h,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillBlue.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Text(
            remoteStatus,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        Container(
          width: 82.h,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillBlue.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Text(
            designStatus,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildCategory1({
    required String recentJobText,
    required String viewAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          recentJobText,
          style: CustomTextStyles.titleMedium18.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            viewAllText,
            style: CustomTextStyles.titleSmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }


}
