import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/job_detail_description_page/models/job_detail_description_model.dart';

/// A controller class for the JobDetailDescriptionPage.
///
/// This class manages the state of the JobDetailDescriptionPage, including the
/// current jobDetailDescriptionModelObj
class JobDetailDescriptionController extends GetxController {
  JobDetailDescriptionController(this.jobDetailDescriptionModelObj);

  Rx<JobDetailDescriptionModel> jobDetailDescriptionModelObj;
}
