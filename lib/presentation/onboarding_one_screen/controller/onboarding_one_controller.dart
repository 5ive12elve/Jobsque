import 'package:final_project/core/app_export.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../models/findajobandslider_item_model.dart';
import '../models/onboarding_one_model.dart';

class OnboardingOneController extends GetxController {
 Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;
 Rx<int> sliderIndex = 0.obs;
 RxBool rebuildCarousel = true.obs;

 @override
 void onInit() {
  onboardingOneModelObj.update((model) {
   model!.findajobandsliderItemList.value.add(
    FindajobandsliderItemModel(
     id: Rx(1),
     imagePath: 'assets/images/OB1.png',
     exploreOver: Rx("Explore over 25,924 available job roles and upgrade your operator now."),
     findAJobText: Rx("Find a job, and"),
     startBuildingText: Rx("start building"),
     blackagain: Rx(" your career from now on"),
    ),
   );
   model.findajobandsliderItemList.value.add(
    FindajobandsliderItemModel(
     id: Rx(2),
     imagePath: 'assets/images/OB2.png',
     exploreOver: Rx("Immediately join us and start applying for the job you are interested in."),
     findAJobText: Rx("Hundred of jobs are waiting for you to"),
     startBuildingText: Rx("join together".tr),
    ),
   );
   model.findajobandsliderItemList.value.add(
    FindajobandsliderItemModel(
     id: Rx(3),
     imagePath: 'assets/images/OB3.png',
     exploreOver: Rx('The better the skills you have, the greater the good job opportunities for you.'),
     findAJobText: Rx("Get the best"),
     startBuildingText: Rx("choice for the job"),
     blackagain: Rx(" you've always dreamed of"),
    ),
   );
  });
  super.onInit();
 }

 void nextButtonPressed() {
  int nextIndex = sliderIndex.value + 1;

  if (nextIndex < onboardingOneModelObj.value.findajobandsliderItemList.value.length) {
   sliderIndex.value = nextIndex;
  } else {
   sliderIndex.value = 0;
  }

  // If on the last page, update the label to "Get Started"
  if (sliderIndex.value == 2) {
   update(["nextButton"]);
  }
 }

 String get nextButtonLabel {
  // Correct the index check here
  return sliderIndex.value == 2 ? "Get Started" : "Next";
 }

}
