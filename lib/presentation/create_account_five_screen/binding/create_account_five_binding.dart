import '../controller/create_account_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAccountFiveScreen.
///
/// This class ensures that the CreateAccountFiveController is created when the
/// CreateAccountFiveScreen is first loaded.
class CreateAccountFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountFiveController());
  }
}
