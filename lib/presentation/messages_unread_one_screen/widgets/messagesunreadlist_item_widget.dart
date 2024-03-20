import '../controller/messages_unread_one_controller.dart';
import '../models/messagesunreadlist_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessagesunreadlistItemWidget extends StatelessWidget {
  MessagesunreadlistItemWidget(
    this.messagesunreadlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessagesunreadlistItemModel messagesunreadlistItemModelObj;

  var controller = Get.find<MessagesUnreadOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 2.adaptSize,
              width: 2.adaptSize,
              margin: EdgeInsets.only(
                right: 35.h,
                bottom: 5.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.blueGray10001,
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
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
                          imagePath:
                              messagesunreadlistItemModelObj.circleImage!.value,
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
                              messagesunreadlistItemModelObj.message!.value,
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
                                messagesunreadlistItemModelObj.twitter!.value,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.v),
                              child: Obx(
                                () => Text(
                                  messagesunreadlistItemModelObj
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
                              messagesunreadlistItemModelObj
                                  .hereIsTheLink!.value,
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
            ),
          ),
        ],
      ),
    );
  }
}
