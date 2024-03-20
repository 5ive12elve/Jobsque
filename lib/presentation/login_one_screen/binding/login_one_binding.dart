import '../controller/login_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginOneScreen.
///
/// This class ensures that the LoginOneController is created when the
/// LoginOneScreen is first loaded.
class LoginOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginOneController());
  }
}
