import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/applied_job_two_page/models/applied_job_two_model.dart';

/// A controller class for the AppliedJobTwoPage.
///
/// This class manages the state of the AppliedJobTwoPage, including the
/// current appliedJobTwoModelObj
class AppliedJobTwoController extends GetxController {
  AppliedJobTwoController(this.appliedJobTwoModelObj);

  Rx<AppliedJobTwoModel> appliedJobTwoModelObj;
}
