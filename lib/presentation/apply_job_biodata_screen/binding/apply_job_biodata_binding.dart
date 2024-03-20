import '../controller/apply_job_biodata_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ApplyJobBiodataScreen.
///
/// This class ensures that the ApplyJobBiodataController is created when the
/// ApplyJobBiodataScreen is first loaded.
class ApplyJobBiodataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplyJobBiodataController());
  }
}
