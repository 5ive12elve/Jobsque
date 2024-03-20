import '../controller/complete_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CompleteProfileScreen.
///
/// This class ensures that the CompleteProfileController is created when the
/// CompleteProfileScreen is first loaded.
class CompleteProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteProfileController());
  }
}
