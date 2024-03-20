import '../controller/applied_job_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppliedJobScreen.
///
/// This class ensures that the AppliedJobController is created when the
/// AppliedJobScreen is first loaded.
class AppliedJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppliedJobController());
  }
}
