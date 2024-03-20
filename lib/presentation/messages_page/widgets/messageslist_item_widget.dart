import '../controller/messages_controller.dart';
import '../models/messageslist_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageslistItemWidget extends StatelessWidget {
  MessageslistItemWidget(
    this.messageslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessageslistItemModel messageslistItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 44.adaptSize,
          width: 44.adaptSize,
          margin: EdgeInsets.only(bottom: 12.v),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: messageslistItemModelObj.circleImage!.value,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    22.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 17.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlineWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Obx(
                    () => Text(
                      messageslistItemModelObj.message!.value,
                      style: CustomTextStyles.labelMediumWhiteA700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        messageslistItemModelObj.twitter!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      child: Obx(
                        () => Text(
                          messageslistItemModelObj
                              .oneThousandTwoHundredThirtyNin!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Obx(
                    () => Text(
                      messageslistItemModelObj.hereIsTheLink!.value,
                      style: CustomTextStyles.bodySmallGray60001,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                Divider(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
