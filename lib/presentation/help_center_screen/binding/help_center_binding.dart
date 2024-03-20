import '../controller/help_center_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HelpCenterScreen.
///
/// This class ensures that the HelpCenterController is created when the
/// HelpCenterScreen is first loaded.
class HelpCenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpCenterController());
  }
}
