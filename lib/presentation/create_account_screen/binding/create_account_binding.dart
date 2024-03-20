
import 'package:final_project/presentation/create_account_screen/controller/create_account_controller.dart';
import 'package:get/get.dart';
class CreateAccountBinding extends Bindings{


  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountController());
  }

}


