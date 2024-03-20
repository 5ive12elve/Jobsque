import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 291.h,
        controller: controller,
        hintText: "lbl_ui_ux_designer".tr,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgSearchBlueGray90002,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 14.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgClosePrimarycontainer,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
        filled: false,
      ),
    );
  }
}
