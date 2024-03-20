import '../controller/job_detail_people_controller.dart';
import '../models/jobdetailpeople_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JobdetailpeopleItemWidget extends StatelessWidget {
  JobdetailpeopleItemWidget(
    this.jobdetailpeopleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JobdetailpeopleItemModel jobdetailpeopleItemModelObj;

  var controller = Get.find<JobDetailPeopleController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: jobdetailpeopleItemModelObj.dimasAdiSaputro!.value,
            height: 36.adaptSize,
            width: 36.adaptSize,
            radius: BorderRadius.circular(
              18.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  jobdetailpeopleItemModelObj.dimasAdiSaputro1!.value,
                  style: CustomTextStyles.titleSmallPrimaryContainer,
                ),
              ),
              SizedBox(height: 6.v),
              Obx(
                () => Text(
                  jobdetailpeopleItemModelObj.seniorUIUXDesigner!.value,
                  style: CustomTextStyles.bodySmallGray60001,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Column(
            children: [
              Obx(
                () => Text(
                  jobdetailpeopleItemModelObj.workDuring!.value,
                  style: CustomTextStyles.bodySmallGray60001,
                ),
              ),
              SizedBox(height: 3.v),
              Align(
                alignment: Alignment.centerRight,
                child: Obx(
                  () => Text(
                    jobdetailpeopleItemModelObj.duration!.value,
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
