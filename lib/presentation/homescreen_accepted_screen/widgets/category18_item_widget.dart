import '../models/category18_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category18ItemWidget extends StatelessWidget {
  Category18ItemWidget(
    this.category18ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Category18ItemModel category18ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 5.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          category18ItemModelObj.fulltime!.value,
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 12.fSize,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (category18ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blue5002,
        selectedColor: appTheme.blue5002,
        shape: (category18ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  13.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  13.h,
                ),
              ),
        onSelected: (value) {
          category18ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
