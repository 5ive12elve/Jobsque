import '../controller/experience_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExperienceScreen.
///
/// This class ensures that the ExperienceController is created when the
/// ExperienceScreen is first loaded.
class ExperienceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExperienceController());
  }
}
