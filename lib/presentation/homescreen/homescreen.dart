import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets/app_bar/appbar_subtitle_five.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import '../profile/controller/profile_controller.dart';
import 'controller/homescreen_controller.dart';
import 'model/homescreen_model.dart';

class Homescreen extends StatelessWidget {
  final HomescreenController homescreenController = Get.put(HomescreenController());
  final ProfileController profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomSearchView(
                controller: homescreenController.searchController,
                hintText: "lbl_search".tr,
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: _buildCategory(
                title: "lbl_suggested_job".tr,
                viewAllText: "lbl_view_all".tr,
              ),
            ),
            SizedBox(height: 0.v),
            Obx(
                  () {
                if (homescreenController.homescreenData.value != null) {
                  return buildCarouselSlider(homescreenController.homescreenData.value!);
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            SizedBox(height: 1.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: _buildCategory(
                title: "lbl_recent_job".tr,
                viewAllText: "lbl_view_all".tr,
              ),
            ),
            SizedBox(height: 18.v),
            _buildJobTitleSave(),
            SizedBox(height: 16.v),
            _buildCategoryPrice1(),
            SizedBox(height: 16.v),
            Divider(endIndent: 24.h),
            SizedBox(height: 21.v),
            _buildJobTitleSave1(),
            SizedBox(height: 16.v),
            _buildCategoryPrice1(),
            SizedBox(height: 16.v),
            Divider(endIndent: 24.h),
          ],
        ),
      ),
    );
  }

  Widget buildCarouselSlider(HomescreenModel homescreenData) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300.v,
        autoPlay: false,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: homescreenData.data!.map((job) {
        return Builder(
          builder: (BuildContext context) {
            return buildJobSlide(job);
          },
        );
      }).toList(),
    );
  }

  Widget buildJobSlide(Data job) {
    return Container(
      child: Card(
        elevation: 0,
        child: IntrinsicWidth(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 30.v,
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
                            decoration: IconButtonStyleHelper.fillWhiteA,
                            child: CustomImageView(
                              imagePath: job.image!,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h, top: 2.v, right: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  job.name ?? "",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SF PRO',
                                    fontWeight: FontWeight.w900
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  job.compName ?? "",
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
                            margin: EdgeInsets.only(
                              top: 8.v,
                              bottom: 9.v,
                              right: 8.h,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 21.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildColumn("Fulltime"),
                          _buildColumn("Remote"),
                          _buildColumn("Design"),
                        ],
                      ),
                      SizedBox(height: 20.v),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 7.v,
                              bottom: 1.v,
                              right: 50.h,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'EGP ',
                                    style: CustomTextStyles.labelLargeWhiteA700_3,
                                  ),
                                  TextSpan(
                                    text: job.salary ?? "",
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
                            height: 36.v,
                            width: 70.h,
                            text: "Apply now",
                            buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                            buttonTextStyle: CustomTextStyles.labelLargeWhiteA700_3,
                            onPressed: () {
                              if (AppRoutes.appliedJobScreen != null) {
                                Get.toNamed(AppRoutes.appliedJobScreen,
                                arguments: {
                                  'jobName': job.name,
                                  'jobImage': job.image,
                                  'jobDesc': job.jobDescription,
                                  'jobID': job.id,
                                  'jobType': job.jobType,
                                  'jobLoc': job.location,
                                  'compName': job.compName,
                                  'skillReq': job.jobSkill,
                                  'compEmail': job.compEmail,
                                  'compWeb': job.compWebsite,
                                  'compAbout': job.aboutComp,
                                  'salary': job.salary,

                                }
                                );
                              } else {
                                // Handle the case where AppRoutes.jobDetailCompanyPage is null
                                print("AppliedJobScreen() is null");
                              }

                            },
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
      ),
    );
  }

  Widget _buildColumn(String text) {
    return Column(
      children: [
        Container(
          width: 76.h, // Adjust the width as needed
          height: 36.v, // Adjust the height as needed
          decoration: BoxDecoration(
            color: Color.fromARGB(110, 0, 152, 255), // Change the color as needed
            borderRadius: BorderRadius.circular(18), // Adjust the border radius as needed
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white, // Change the text color as needed
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 100.v,
      title: Padding(
        padding: EdgeInsets.only(left: 24.h, top: 37.v),
        child: Column(
          children: [
            Obx(() {
              final name = profileController.userProfile.value?.name ?? "Default Username";
              final greeting = "Hi, ";
              return AppbarTitle(
                text: "$greeting$name",
                margin: EdgeInsets.only(right: 73.h),
                // Add the style here
              );
            }),
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

  Widget _buildJobTitleSave() {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
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
              right: 24.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJobTitleSave1() {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
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
              right: 24.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryPrice1() {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
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

  Widget _buildCategory({
    required String title,
    required String viewAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
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
