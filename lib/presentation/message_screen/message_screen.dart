import 'controller/message_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:final_project/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:final_project/widgets/app_bar/appbar_title_image.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_icon_button.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MessageScreen extends GetWidget<MessageController> {
 const MessageScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
   child: Scaffold(
    resizeToAvoidBottomInset: false,
    backgroundColor: appTheme.gray50,
    body: SingleChildScrollView(
     child: SizedBox(
      width: double.maxFinite,
      child: Column(
       children: [
        _buildMessageContent(),
        Container(
         padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           _buildTime(),
           SizedBox(height: 16.v),
           Padding(
            padding: EdgeInsets.only(right: 55.h),
            child: _buildChat(
             interviewTime: "msg_hi_rafif_i_m_melan".tr,
             dateLabel: "lbl_10_18".tr,
            ),
           ),
           SizedBox(height: 16.v),
           Align(
            alignment: Alignment.centerRight,
            child: Container(
             width: 237.h,
             margin: EdgeInsets.only(left: 90.h),
             padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
             decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
             ),
             child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container(
                width: 209.h,
                margin: EdgeInsets.only(right: 7.h),
                child: Text(
                 "msg_hi_melan_thank".tr,
                 maxLines: 2,
                 overflow: TextOverflow.ellipsis,
                 style: CustomTextStyles.bodyMediumGray100.copyWith(height: 1.40),
                ),
               ),
               Align(
                alignment: Alignment.centerRight,
                child: Text(
                 "lbl_10_18".tr,
                 style: CustomTextStyles.bodySmallGray200,
                ),
               ),
              ],
             ),
            ),
           ),
           SizedBox(height: 16.v),
           Padding(
            padding: EdgeInsets.only(right: 55.h),
            child: _buildChat(
             interviewTime: "msg_can_we_have_an_interview".tr,
             dateLabel: "lbl_10_18".tr,
            ),
           ),
           SizedBox(height: 16.v),
           Align(
            alignment: Alignment.centerRight,
            child: Container(
             margin: EdgeInsets.only(left: 208.h),
             padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
             decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
             ),
             child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               Text(
                "msg_of_course_i_can".tr,
                style: CustomTextStyles.bodyMediumGray100,
               ),
               SizedBox(height: 1.v),
               Align(
                alignment: Alignment.centerRight,
                child: Text(
                 "lbl_10_18".tr,
                 style: CustomTextStyles.bodySmallGray200,
                ),
               ),
              ],
             ),
            ),
           ),
           SizedBox(height: 16.v),
           Padding(
            padding: EdgeInsets.only(right: 55.h),
            child: _buildChat(
             interviewTime: "msg_ok_here_i_put_the".tr,
             dateLabel: "lbl_10_18".tr,
             onTapTime: () {
              onTapTxtOkhereiputthe();
             },
            ),
           ),
           SizedBox(height: 5.v),
          ],
         ),
        ),
       ],
      ),
     ),
    ),
    bottomNavigationBar: _buildWriteMessage(),
   ),
  );
 }

 /// Section Widget
 Widget _buildMessageContent() {
  return Container(
   decoration: AppDecoration.fillWhiteA,
   child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
     SizedBox(height: 12.v),
     CustomAppBar(
      height: 60.v,
      centerTitle: true,
      title: Column(
       children: [
        Padding(
         padding: EdgeInsets.symmetric(horizontal: 24.h),
         child: Row(
          children: [
           AppbarTitleImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.symmetric(vertical: 6.v),
            onTap: () {
             onTapArrowLeft();
            },
           ),
           AppbarTitleCircleimage(
            imagePath: ImageConstant.imgImage31,
            margin: EdgeInsets.only(left: 20.h),
           ),
           AppbarSubtitleOne(
            text: "lbl_twitter".tr,
            margin: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 8.v),
           ),
           AppbarTitleImage(
            imagePath: ImageConstant.imgMore,
            margin: EdgeInsets.only(left: 162.h, top: 6.v, bottom: 6.v),
           ),
          ],
         ),
        ),
        SizedBox(height: 24.v),
        SizedBox(width: double.maxFinite, child: Divider()),
       ],
      ),
      styleType: Style.bgFill,
     ),
    ],
   ),
  );
 }

 /// Section Widget
 Widget _buildTime() {
  return Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
    Padding(
     padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
     child: SizedBox(
      width: 113.h,
      child: Divider(color: appTheme.blueGray300),
     ),
    ),
    Text(
     "lbl_today_nov_13".tr,
     style: CustomTextStyles.labelLargeBluegray300,
    ),
    Padding(
     padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
     child: SizedBox(
      width: 113.h,
      child: Divider(color: appTheme.blueGray300),
     ),
    ),
   ],
  );
 }

 /// Section Widget
 Widget _buildWriteMessage() {
  return Container(
   margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 41.v),
   decoration: AppDecoration.fillWhiteA,
   child: Container(
    decoration: AppDecoration.fillWhiteA,
    child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
      CustomIconButton(
       height: 42.adaptSize,
       width: 42.adaptSize,
       padding: EdgeInsets.all(11.h),
       decoration: IconButtonStyleHelper.outlineBlueGrayTL21,
       child: CustomImageView(
        imagePath: ImageConstant.imgPaperclip,
       ),
      ),
      CustomTextFormField(
       width: 227.h,
       controller: controller.messageController,
       hintText: "msg_write_a_message".tr,
       textInputAction: TextInputAction.done,
       contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
      ),
      CustomIconButton(
       height: 42.adaptSize,
       width: 42.adaptSize,
       padding: EdgeInsets.all(10.h),
       decoration: IconButtonStyleHelper.outlineBlueGrayTL21,
       child: CustomImageView(
        imagePath: ImageConstant.imgMicrophone,
       ),
      ),
     ],
    ),
   ),
  );
 }

 /// Common widget
 Widget _buildChat({
  required String interviewTime,
  required String dateLabel,
  Function? onTapTime,
 }) {
  return Container(
   padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
   decoration: AppDecoration.fillGray200.copyWith(
    borderRadius: BorderRadiusStyle.customBorderBL8,
   ),
   child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
     GestureDetector(
      onTap: () {
       onTapTime!.call();
      },
     ),
     SizedBox(
      width: 249.h,
      child: Text(
       interviewTime,
       maxLines: 2,
       overflow: TextOverflow.ellipsis,
       style: CustomTextStyles.bodyMediumBluegray90001.copyWith(color: appTheme.blueGray90001, height: 1.40),
      ),
     ),
     Align(
      alignment: Alignment.centerRight,
      child: Text(
       dateLabel,
       style: CustomTextStyles.bodySmallGray60001.copyWith(color: appTheme.gray60001),
      ),
     ),
    ],
   ),
  );
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }

 onTapTxtOkhereiputthe() {
  // TODO: implement Actions
 }
}
