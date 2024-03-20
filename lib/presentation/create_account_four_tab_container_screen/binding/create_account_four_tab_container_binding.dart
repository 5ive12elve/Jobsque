import '../controller/create_account_four_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAccountFourTabContainerScreen.
///
/// This class ensures that the CreateAccountFourTabContainerController is created when the
/// CreateAccountFourTabContainerScreen is first loaded.
class CreateAccountFourTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountFourTabContainerController());
  }
}
