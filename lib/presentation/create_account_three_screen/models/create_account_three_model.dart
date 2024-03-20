import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import 'createaccountthreegrid_item_model.dart';

class CreateAccountThreeModel {
 Rx<List<CreateaccountthreegridItemModel>> createaccountthreegridItemList = Rx([
  CreateaccountthreegridItemModel(
   search: ImageConstant.imgSearchPrimary48x48.obs,
   uIUXDesigner: "UI/UX Designer".obs,
   isSelected: false,
  ),
  CreateaccountthreegridItemModel(
   search: ImageConstant.imgSettingsBlueGray90002.obs,
   uIUXDesigner: "Ilustrator Designer".obs,
   isSelected: false,
  ),
  CreateaccountthreegridItemModel(
   search: ImageConstant.imgDeveloperCategory.obs,
   uIUXDesigner: "Developer".obs,
   isSelected: false,
  ),
  CreateaccountthreegridItemModel(
   search: ImageConstant.imgVuesaxOutlineGraph.obs,
   uIUXDesigner: "Management".obs,
   isSelected: false,
  ),
  CreateaccountthreegridItemModel(
   search: ImageConstant.imgInformationTechnology.obs,
   uIUXDesigner: "Information Technology".obs,
   isSelected: false,
  ),
  CreateaccountthreegridItemModel(
   search: ImageConstant.imgResearchAndAnalytics.obs,
   uIUXDesigner: "Research and Analytics".obs,
   isSelected: false,
  ),
 ]);
}
