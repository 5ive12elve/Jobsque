import '../job_detail_people_page/widgets/jobdetailpeople_item_widget.dart';
import 'controller/job_detail_people_controller.dart';
import 'models/job_detail_people_model.dart';
import 'models/jobdetailpeople_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_drop_down.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class JobDetailPeoplePage extends StatelessWidget {
  JobDetailPeoplePage({Key? key})
      : super(
          key: key,
        );

  JobDetailPeopleController controller =
      Get.put(JobDetailPeopleController(JobDetailPeopleModel().obs));

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
                SizedBox(height: 26.v),
                Column(
                  children: [
                    _buildEmployeesForTittle(),
                    SizedBox(height: 27.v),
                    _buildJobDetailPeople(),
                    SizedBox(height: 26.v),
                    _buildUiuxDesignerAtTwitter(),
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
  Widget _buildEmployeesForTittle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_6_employees_for".tr,
                style: CustomTextStyles.titleSmallPrimaryContainer,
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_ui_ux_design".tr,
                style: CustomTextStyles.bodySmallGray60001,
              ),
            ],
          ),
          CustomDropDown(
            width: 137.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(8.h, 11.v, 16.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            hintText: "lbl_ui_ux_designer".tr,
            hintStyle: CustomTextStyles.bodySmallPrimaryContainer,
            items: controller
                .jobDetailPeopleModelObj.value.dropdownItemList!.value,
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 11.v,
              bottom: 11.v,
            ),
            borderDecoration: DropDownStyleHelper.outlineBlueGrayTL19,
            onChanged: (value) {
              controller.onSelected(value);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJobDetailPeople() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 15.5.v),
              child: SizedBox(
                width: 327.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray200,
                ),
              ),
            );
          },
          itemCount: controller.jobDetailPeopleModelObj.value
              .jobdetailpeopleItemList.value.length,
          itemBuilder: (context, index) {
            JobdetailpeopleItemModel model = controller.jobDetailPeopleModelObj
                .value.jobdetailpeopleItemList.value[index];
            return JobdetailpeopleItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUiuxDesignerAtTwitter() {
    return SizedBox(
      height: 128.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomElevatedButton(
            height: 52.v,
            width: 327.h,
            text: "msg_ui_ux_designer_at".tr,
            margin: EdgeInsets.only(top: 5.v),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgDindraProfile,
                height: 36.adaptSize,
                width: 36.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.underLineGray,
            buttonTextStyle: CustomTextStyles.bodySmallGray60001,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 75.v,
                right: 24.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFerdiProfile,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    radius: BorderRadius.circular(
                      18.h,
                    ),
                    margin: EdgeInsets.only(bottom: 15.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      bottom: 18.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_ferdi_saputra".tr,
                          style: CustomTextStyles.titleSmallPrimaryContainer,
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "msg_ui_ux_designer_at".tr,
                          style: CustomTextStyles.bodySmallGray60001,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 19.v),
                    child: Column(
                      children: [
                        Text(
                          "lbl_work_during".tr,
                          style: CustomTextStyles.bodySmallGray60001,
                        ),
                        SizedBox(height: 1.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "lbl_3_years".tr,
                            textAlign: TextAlign.right,
                            style: CustomTextStyles.labelLargePrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
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
