import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';

class CreateaccountthreegridItemModel {
 Rx<String>? search;
 Rx<String>? uIUXDesigner;
 Rx<String>? uIIlustrator;
 Rx<String>? uIDeveloper;
 Rx<String>? uIManagement;
 Rx<String>? uIInformation;
 Rx<String>? uIResearch;
 Rx<String>? id;
 RxBool isSelectedUIUX = false.obs;
 RxBool isSelectedIlustrator = false.obs;
 RxBool isSelectedDeveloper = false.obs;
 RxBool isSelectedManagement = false.obs;
 RxBool isSelectedInformation = false.obs;
 RxBool isSelectedResearch = false.obs;

 CreateaccountthreegridItemModel({
  this.search,
  this.uIUXDesigner,
  this.uIIlustrator,
  this.uIDeveloper,
  this.uIManagement,
  this.uIInformation,
  this.uIResearch,
  this.id,
  bool? isSelected,
 }) {
  search = search ?? Rx(ImageConstant.imgSearchPrimary48x48);
  uIUXDesigner = uIUXDesigner ?? Rx("UI/UX Designer");
  uIIlustrator = uIIlustrator ?? Rx("Ilustrator Designer");
  uIDeveloper = uIDeveloper ?? Rx("Developer");
  uIManagement = uIManagement ?? Rx("Management");
  uIInformation = uIInformation ?? Rx("Information Technology");
  uIResearch = uIResearch ?? Rx("Research and Analytics");
  id = id ?? Rx("");
  isSelectedUIUX = isSelected == null ? false.obs : isSelected.obs;
  isSelectedIlustrator = isSelected == null ? false.obs : isSelected.obs;
  isSelectedDeveloper = isSelected == null ? false.obs : isSelected.obs;
  isSelectedManagement = isSelected == null ? false.obs : isSelected.obs;
  isSelectedInformation = isSelected == null ? false.obs : isSelected.obs;
  isSelectedResearch = isSelected == null ? false.obs : isSelected.obs;
 }
}
