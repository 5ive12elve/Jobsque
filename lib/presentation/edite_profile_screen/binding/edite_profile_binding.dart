import '../controller/edite_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditeProfileScreen.
///
/// This class ensures that the EditeProfileController is created when the
/// EditeProfileScreen is first loaded.
class EditeProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditeProfileController());
  }
}
