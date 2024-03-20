import '../controller/job_detail_people_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the JobDetailPeopleTabContainerScreen.
///
/// This class ensures that the JobDetailPeopleTabContainerController is created when the
/// JobDetailPeopleTabContainerScreen is first loaded.
class JobDetailPeopleTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobDetailPeopleTabContainerController());
  }
}
