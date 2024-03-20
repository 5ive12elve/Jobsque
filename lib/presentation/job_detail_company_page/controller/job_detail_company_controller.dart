import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/job_detail_company_page/models/job_detail_company_model.dart';
import 'package:flutter/material.dart';


class JobDetailCompanyController extends GetxController {
  JobDetailCompanyController(this.jobDetailCompanyModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController weburlController = TextEditingController();

  Rx<JobDetailCompanyModel> jobDetailCompanyModelObj;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    weburlController.dispose();
  }
}
