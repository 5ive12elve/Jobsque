import '../../../core/app_export.dart';

/// This class is used in the [languagelist_item_widget] screen.
class LanguagelistItemModel {
  LanguagelistItemModel({
    this.chinese,
    this.chinese1,
    this.id,
  }) {
    chinese = chinese ?? Rx(ImageConstant.imgChina);
    chinese1 = chinese1 ?? Rx("Chinese");
    id = id ?? Rx("");
  }

  Rx<String>? chinese;

  Rx<String>? chinese1;

  Rx<String>? id;
}
