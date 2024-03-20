import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/apply_job_biodata_screen/models/apply_job_biodata_model.dart';import 'package:flutter/material.dart';/// A controller class for the ApplyJobBiodataScreen.
///
/// This class manages the state of the ApplyJobBiodataScreen, including the
/// current applyJobBiodataModelObj
class ApplyJobBiodataController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneController = TextEditingController();

Rx<ApplyJobBiodataModel> applyJobBiodataModelObj = ApplyJobBiodataModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); phoneController.dispose(); } 
 }
