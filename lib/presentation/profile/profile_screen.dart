import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/applied_job_screen/applied_job_screen.dart';
import 'package:final_project/presentation/homescreen_accepted_screen/homescreen_accepted_screen.dart';
import 'package:final_project/presentation/message_screen/message_screen.dart';
import 'package:final_project/presentation/profile/controller/profile_controller.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../profile_page/profile_page.dart';
import '../save_job_page/save_job_page.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.find<ProfileController>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/Profile Background.png',
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  // Transparent AppBar
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    title: Text("Profile".tr,
                        style: theme.textTheme.titleLarge,
                    ),
                    centerTitle: true,
                    toolbarHeight: 90.v,
                  ),
                  SizedBox(height: 65.v),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.grey[200], // Set the background color to light grey
                    child: CustomImageView(
                      imagePath: 'assets/images/img_user_blue_gray_300.svg',
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),

                  SizedBox(height: 10.0),
                  Obx(() {
                    final name = profileController.userProfile.value?.name ?? "Default Username";
                    return Text(name,style: theme.textTheme.titleLarge);
                  }),
                  SizedBox(height: 4.v),
                  Text("Bio".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 12.v),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 22.v),
                        _buildInformationRow(),
                        SizedBox(height: 36.v),
                        _buildFrameRow(),
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
                                portfolio: "Edit Profile")),
                        SizedBox(height: 4.v),
                        Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildPortfolio(
                                userImage: ImageConstant.imgFolder,
                                portfolio: "Portfolio")),
                        SizedBox(height: 4.v),
                        Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildPortfolio(
                                userImage:
                                ImageConstant.imgSettingsPrimary,
                                portfolio: "Language")),
                        SizedBox(height: 4.v),
                        Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildPortfolio(
                                userImage: ImageConstant
                                    .imgNotificationPrimary,
                                portfolio: "Notification")),
                        SizedBox(height: 4.v),
                        Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildPortfolio(
                                userImage: ImageConstant
                                    .imgLock,
                                portfolio: "Login and security")),
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
                                helpCenterText: "Accesibility")),
                        SizedBox(height: 4.v),
                        Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildHelpCenter(
                                helpCenterText: "Help Center")),
                        SizedBox(height: 4.v),
                        Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildHelpCenter(
                                helpCenterText:
                                "Terms & Conditions")),
                        SizedBox(height: 4.v),
                        Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildHelpCenter(
                                helpCenterText:
                                "Privacy Policy")),

                      ],
                    ),
                  )

                  // ... rest of your widgets
                ],
              ),
            ),
          ],
        ),
        //bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

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

  Widget _buildPortfolio({
    required String userImage,
    required String portfolio,
  }) {
    return GestureDetector(
      onTap: () {
        // Navigate to the corresponding screen based on the portfolio label
        switch (portfolio) {
          case "Edit Profile":
            Get.toNamed(AppRoutes.editeProfileScreen, arguments: profileController.userProfile.value?.name); // Replace with your actual route name
            break;
          case "Portfolio":
            Get.toNamed(AppRoutes.portfolioScreen); // Replace with your actual route name
            break;
          case "Language":
            Get.toNamed(AppRoutes.languageScreen); // Replace with your actual route name
            break;
          case "Notification":
            Get.toNamed(AppRoutes.notificationScreen); // Replace with your actual route name
            break;
          case "Login and security":
            Get.toNamed(AppRoutes.loginAndSecurityScreen); // Replace with your actual route name
            break;
          case "Accesibility":
            Get.toNamed(AppRoutes.loginAndSecurityScreen); // Replace with your actual route name
            break;
          case "Help Center":
            Get.toNamed(AppRoutes.helpCenterScreen); // Replace with your actual route name
            break;
          case "Terms & Conditions":
            Get.toNamed(AppRoutes.termsConditionsScreen); // Replace with your actual route name
            break;
          case "Privacy Policy":
            Get.toNamed(AppRoutes.termsConditionsScreen); // Replace with your actual route name
            break;
          default:
          // Handle default case or do nothing
            break;
        }
      },
      child: Container(
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
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 10.v),
              child: Text(
                portfolio,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.primaryContainer,
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(top: 12.v, bottom: 10.v),
            ),
          ],
        ),
      ),
    );
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



  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homescreenAcceptedScreen;
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Applied:
        return AppRoutes.appliedJobScreen;
      case BottomBarEnum.Saved:
        return AppRoutes.saveJobPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homescreenAcceptedScreen:
        return HomescreenAcceptedScreen();
      case AppRoutes.messageScreen:
        return MessageScreen();
      case AppRoutes.appliedJobTwoTabContainerPage:
        return AppliedJobScreen();
      case AppRoutes.saveJobPage:
        return SaveJobPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

}



