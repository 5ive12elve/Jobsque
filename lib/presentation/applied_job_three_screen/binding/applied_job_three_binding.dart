import '../controller/applied_job_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppliedJobThreeScreen.
///
/// This class ensures that the AppliedJobThreeController is created when the
/// AppliedJobThreeScreen is first loaded.
class AppliedJobThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppliedJobThreeController());
  }
}
