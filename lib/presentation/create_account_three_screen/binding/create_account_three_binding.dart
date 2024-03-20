import '../controller/create_account_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAccountThreeScreen.
///
/// This class ensures that the CreateAccountThreeController is created when the
/// CreateAccountThreeScreen is first loaded.
class CreateAccountThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountThreeController());
  }
}
