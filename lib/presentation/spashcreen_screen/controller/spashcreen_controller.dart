import 'package:final_project/core/app_export.dart';
import 'package:final_project/presentation/spashcreen_screen/models/spashcreen_model.dart';

class SpashcreenController extends GetxController {Rx<SpashcreenModel> spashcreenModelObj = SpashcreenModel().obs;

@override void onReady() { Future.delayed(const Duration(milliseconds: 3200), (){
Get.offNamed(AppRoutes.onboardingOneScreen,);});
}



 }
