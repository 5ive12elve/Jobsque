import '../controller/education_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EducationScreen.
///
/// This class ensures that the EducationController is created when the
/// EducationScreen is first loaded.
class EducationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EducationController());
  }
}
