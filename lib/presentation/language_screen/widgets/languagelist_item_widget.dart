import '../controller/language_controller.dart';
import '../models/languagelist_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LanguagelistItemWidget extends StatelessWidget {
  LanguagelistItemWidget(
    this.languagelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LanguagelistItemModel languagelistItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20.v,
        bottom: 19.v,
      ),
      decoration: AppDecoration.outlineBluegray1001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: languagelistItemModelObj.chinese!.value,
              height: 20.v,
              width: 30.h,
              radius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 2.v,
            ),
            child: Obx(
              () => Text(
                languagelistItemModelObj.chinese1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgIconBlueGray300,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
