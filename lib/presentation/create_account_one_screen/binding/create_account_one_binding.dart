import '../controller/create_account_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAccountOneScreen.
///
/// This class ensures that the CreateAccountOneController is created when the
/// CreateAccountOneScreen is first loaded.
class CreateAccountOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountOneController());
  }
}
