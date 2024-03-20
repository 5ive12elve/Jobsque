import '../controller/profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginTwoScreen.
///
/// This class ensures that the LoginTwoController is created when the
/// LoginTwoScreen is first loaded.
class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
