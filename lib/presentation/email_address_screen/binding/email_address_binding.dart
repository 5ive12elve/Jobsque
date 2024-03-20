import '../controller/email_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmailAddressScreen.
///
/// This class ensures that the EmailAddressController is created when the
/// EmailAddressScreen is first loaded.
class EmailAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailAddressController());
  }
}
