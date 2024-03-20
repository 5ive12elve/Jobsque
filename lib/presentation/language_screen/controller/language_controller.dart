import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/language_screen/models/language_model.dart';/// A controller class for the LanguageScreen.
///
/// This class manages the state of the LanguageScreen, including the
/// current languageModelObj
class LanguageController extends GetxController {Rx<LanguageModel> languageModelObj = LanguageModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

Rx<String> radioGroup2 = "".obs;

 }
