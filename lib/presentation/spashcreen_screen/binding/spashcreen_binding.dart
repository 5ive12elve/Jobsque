import '../controller/spashcreen_controller.dart';
import 'package:get/get.dart';

class SpashcreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpashcreenController());
  }
}
