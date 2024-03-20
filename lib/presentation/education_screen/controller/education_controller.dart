import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/education_screen/models/education_model.dart';import 'package:flutter/material.dart';/// A controller class for the EducationScreen.
///
/// This class manages the state of the EducationScreen, including the
/// current educationModelObj
class EducationController extends GetxController {TextEditingController frameController = TextEditingController();

TextEditingController bachelorController = TextEditingController();

Rx<EducationModel> educationModelObj = EducationModel().obs;

@override void onClose() { super.onClose(); frameController.dispose(); bachelorController.dispose(); } 
 }
