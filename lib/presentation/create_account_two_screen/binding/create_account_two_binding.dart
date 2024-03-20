import '../controller/create_account_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAccountTwoScreen.
///
/// This class ensures that the CreateAccountTwoController is created when the
/// CreateAccountTwoScreen is first loaded.
class CreateAccountTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountTwoController());
  }
}
