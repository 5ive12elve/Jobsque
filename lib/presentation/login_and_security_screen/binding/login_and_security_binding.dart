import '../controller/login_and_security_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginAndSecurityScreen.
///
/// This class ensures that the LoginAndSecurityController is created when the
/// LoginAndSecurityScreen is first loaded.
class LoginAndSecurityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginAndSecurityController());
  }
}
