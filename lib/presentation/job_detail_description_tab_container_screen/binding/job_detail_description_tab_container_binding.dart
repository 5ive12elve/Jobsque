import '../controller/job_detail_description_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the JobDetailDescriptionTabContainerScreen.
///
/// This class ensures that the JobDetailDescriptionTabContainerController is created when the
/// JobDetailDescriptionTabContainerScreen is first loaded.
class JobDetailDescriptionTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobDetailDescriptionTabContainerController());
  }
}
