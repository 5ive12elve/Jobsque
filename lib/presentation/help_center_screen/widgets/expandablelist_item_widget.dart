import '../controller/help_center_controller.dart';
import '../models/expandablelist_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpandablelistItemWidget extends StatelessWidget {
  ExpandablelistItemWidget(
    this.expandablelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExpandablelistItemModel expandablelistItemModelObj;

  var controller = Get.find<HelpCenterController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "msg_lorem_ipsum_dolor".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
          trailing: (expandablelistItemModelObj.isSelected?.value ?? false)
              ? CustomImageView(
                  imagePath: ImageConstant.imgArrowUp,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                )
              : CustomImageView(
                  imagePath: ImageConstant.imgArrowDownBlueGray300,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                ),
          children: [
            Padding(
              padding: EdgeInsets.only(top: 17.v),
              child: Column(
                children: [
                  SizedBox(
                    width: 303.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor2".tr,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {
            expandablelistItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
