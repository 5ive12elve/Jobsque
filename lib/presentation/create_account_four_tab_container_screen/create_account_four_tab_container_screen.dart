import 'controller/create_account_four_tab_container_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/create_account_four_page/create_account_four_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateAccountFourTabContainerScreen
    extends GetWidget<CreateAccountFourTabContainerController> {
  const CreateAccountFourTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 254.h,
                  margin: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_where_are_you_prefefred".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 292.h,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    right: 59.h,
                  ),
                  child: Text(
                    "msg_let_us_know_where".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeGray600.copyWith(
                      height: 1.30,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              _buildTabview(),
              SizedBox(
                height: 548.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    CreateAccountFourPage(),
                    CreateAccountFourPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 46.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          23.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray60001,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          3.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray100,
          borderRadius: BorderRadius.circular(
            20.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "msg_work_from_office".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_remote_work".tr,
            ),
          ),
        ],
      ),
    );
  }
}
