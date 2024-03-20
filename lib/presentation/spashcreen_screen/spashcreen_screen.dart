import 'controller/spashcreen_controller.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';

class SpashcreenScreen extends GetWidget<SpashcreenController> {
 const SpashcreenScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);

  return SafeArea(
   child: Scaffold(
    body: SizedBox(
     height: 813.v,
     width: double.maxFinite,
     child: Stack(
      alignment: Alignment.center,
      children: [
       CustomImageView(
        imagePath: ImageConstant.imgBlur,
        height: 800.v,
        width: 400.h,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: 4.v,),
       ),
       Align(
        alignment: Alignment.center,
        child: Container(
         height: 768.v,
         width: double.maxFinite,
         padding: EdgeInsets.only(left: 117.h, top: 370.v, right: 121.h),
         child: Stack(
          alignment: Alignment.topLeft,
          children: [
           Align(
            alignment: Alignment.topCenter,
            child: CustomImageView(
             imagePath: 'assets/images/Logo.png',
            ),
           ),
          ],
         ),
        ),
       ),
      ],
     ),
    ),
   ),
  );
 }
}
