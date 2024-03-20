import '../models/countryselection_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountryselectionItemWidget extends StatelessWidget {
  CountryselectionItemWidget(
    this.countryselectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CountryselectionItemModel countryselectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 11.v,
          right: 14.h,
          bottom: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          countryselectionItemModelObj.unitedStates!.value,
          style: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 16.fSize,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgEllipse804,
          height: 26.adaptSize,
          width: 26.adaptSize,
          radius: BorderRadius.circular(
            13.h,
          ),
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (countryselectionItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray50,
        selectedColor: appTheme.blue5002,
        shape: (countryselectionItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  21.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray200,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  21.h,
                ),
              ),
        onSelected: (value) {
          countryselectionItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
