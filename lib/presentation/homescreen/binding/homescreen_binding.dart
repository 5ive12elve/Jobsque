import 'package:final_project/presentation/homescreen/controller/homescreen_controller.dart';
import 'package:get/get.dart';

class HomescreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomescreenController());
  }
}
