import 'controller/app_navigation_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Spashcreen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.spashcreenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homescreen Two - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homescreenTwoContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homescreen Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homescreenFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homescreen Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homescreenFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homescreen Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homescreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edite Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editeProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Portfolio".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.portfolioScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login and security".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loginAndSecurityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create account Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createAccountTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create account Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createAccountFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create account Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createAccountThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create account Four - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createAccountFourTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create account One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createAccountOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Job detail - Description - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.jobDetailDescriptionTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Job detail - People - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.jobDetailPeopleTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Apply job - Biodata".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.applyJobBiodataScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Apply job - Type of work".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.applyJobTypeOfWorkScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Apply job - Upload portfolio One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.applyJobUploadPortfolioOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Email address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.emailAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Phone number".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.phoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Two-step verification One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.twoStepVerificationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Two-step verification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.twoStepVerificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Two-step verification Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.twoStepVerificationFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Apply job - Upload portfolio".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.applyJobUploadPortfolioScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homescreen - Submited".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homescreenSubmitedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homescreen - Accepted".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homescreenAcceptedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Announcement received".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.announcementReceivedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Two-step verification Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.twoStepVerificationThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Two-step verification Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.twoStepVerificationTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Help Center ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helpCenterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Terms & Conditions One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.termsConditionsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Terms & Conditions".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.termsConditionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Save job - empety state".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.saveJobEmpetyStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification - empety state".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationEmpetyStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Applied Job".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.appliedJobScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Applied Job Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.appliedJobThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Applied Job One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.appliedJobOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Messages - Unread One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.messagesUnreadOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Messages - Unread".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messagesUnreadScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Complete Profile One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeProfileOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Personal details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.personalDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Education".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.educationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Experience".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.experienceScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Portfolio One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.portfolioOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Complete Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.completeProfileScreen),
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
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
