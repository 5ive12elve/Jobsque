import '../../../core/app_export.dart';
import 'languagelist_item_model.dart';

/// This class defines the variables used in the [language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageModel {
  Rx<List<LanguagelistItemModel>> languagelistItemList = Rx([
    LanguagelistItemModel(
        chinese: ImageConstant.imgEngland.obs, chinese1: "English".obs),
    LanguagelistItemModel(
        chinese: ImageConstant.imgSaudiArabia.obs, chinese1: "Arabic".obs),
    LanguagelistItemModel(
        chinese: ImageConstant.imgFrance.obs, chinese1: "French".obs),
    LanguagelistItemModel(
        chinese: ImageConstant.imgGermany.obs, chinese1: "German".obs),
    LanguagelistItemModel(
        chinese: ImageConstant.imgJapan.obs, chinese1: "Japanese".obs),
    LanguagelistItemModel(
        chinese: ImageConstant.imgSouthKorea.obs, chinese1: "Korean".obs),
    LanguagelistItemModel(
        chinese: ImageConstant.imgPortugal.obs, chinese1: "Portuguese".obs)
  ]);
}
