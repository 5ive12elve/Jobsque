import 'package:final_project/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/onboarding_one_controller.dart';
import '../models/findajobandslider_item_model.dart';

class FindajobandsliderItemWidget extends StatelessWidget {
  FindajobandsliderItemWidget(
      this.findajobandsliderItemModelObj, {
        Key? key,
      }) : super(
    key: key,
  );

  FindajobandsliderItemModel findajobandsliderItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image on top
            Image.asset(
              findajobandsliderItemModelObj.imagePath,
              width: double.infinity,
              height: screenHeight / 2,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 18.v),
            // Add Padding to the first Text
            Padding(
              padding: EdgeInsets.only(left: 24.0.h),
              child: Container(
                width: 273.h,
                child: Obx(
                      () => RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: findajobandsliderItemModelObj.findAJobText!.value,
                          style: CustomTextStyles.headlineLargePrimaryContainer.copyWith(color: Colors.black87),
                        ),
                        TextSpan(
                          text: " " + findajobandsliderItemModelObj.startBuildingText!.value,
                          style: CustomTextStyles.headlineLargePrimaryContainer.copyWith(color: theme.colorScheme.primary),
                        ),
                        TextSpan(
                          text: findajobandsliderItemModelObj.blackagain!.value,
                          style: CustomTextStyles.headlineLargePrimaryContainer.copyWith(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.v),
            // Add Padding to the second Text
            Padding(
              padding: EdgeInsets.only(left: 24.0.h),
              child: SizedBox(
                width: 291.h,
                child: Obx(
                      () => Text(
                    findajobandsliderItemModelObj.exploreOver!.value,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeGray60001.copyWith(
                      height: 1.30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
