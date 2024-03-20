import '../models/category12_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category12ItemWidget extends StatelessWidget {
  Category12ItemWidget(
    this.category12ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Category12ItemModel category12ItemModelObj;

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
          category12ItemModelObj.fulltime!.value,
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 12.fSize,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (category12ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blue5002,
        selectedColor: appTheme.blue5002,
        shape: (category12ItemModelObj.isSelected?.value ?? false)
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
          category12ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
