import '../controller/terms_conditions_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermsConditionsOneScreen.
///
/// This class ensures that the TermsConditionsOneController is created when the
/// TermsConditionsOneScreen is first loaded.
class TermsConditionsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsConditionsOneController());
  }
}
