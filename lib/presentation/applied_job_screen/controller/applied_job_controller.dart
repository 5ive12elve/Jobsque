import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/applied_job_screen/models/applied_job_model.dart';import 'package:flutter/material.dart';/// A controller class for the AppliedJobScreen.
///
/// This class manages the state of the AppliedJobScreen, including the
/// current appliedJobModelObj
class AppliedJobController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneController = TextEditingController();

Rx<AppliedJobModel> appliedJobModelObj = AppliedJobModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); phoneController.dispose(); } 
 }
