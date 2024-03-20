import '../controller/homescreen_accepted_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomescreenAcceptedScreen.
///
/// This class ensures that the HomescreenAcceptedController is created when the
/// HomescreenAcceptedScreen is first loaded.
class HomescreenAcceptedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomescreenAcceptedController());
  }
}
