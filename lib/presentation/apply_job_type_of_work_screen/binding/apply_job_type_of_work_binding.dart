import '../controller/apply_job_type_of_work_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ApplyJobTypeOfWorkScreen.
///
/// This class ensures that the ApplyJobTypeOfWorkController is created when the
/// ApplyJobTypeOfWorkScreen is first loaded.
class ApplyJobTypeOfWorkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplyJobTypeOfWorkController());
  }
}
