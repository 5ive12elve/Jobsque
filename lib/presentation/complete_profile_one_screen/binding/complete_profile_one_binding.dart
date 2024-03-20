import '../controller/complete_profile_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CompleteProfileOneScreen.
///
/// This class ensures that the CompleteProfileOneController is created when the
/// CompleteProfileOneScreen is first loaded.
class CompleteProfileOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteProfileOneController());
  }
}
