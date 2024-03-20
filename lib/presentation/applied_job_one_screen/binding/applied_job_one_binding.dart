import 'package:get/get.dart';

import '../controller/applied_job_one_controller.dart';

class AppliedJobOneBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut(() => JobApplicationController());
  }
}
