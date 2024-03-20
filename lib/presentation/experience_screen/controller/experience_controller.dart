import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/experience_screen/models/experience_model.dart';import 'package:flutter/material.dart';/// A controller class for the ExperienceScreen.
///
/// This class manages the state of the ExperienceScreen, including the
/// current experienceModelObj
class ExperienceController extends GetxController {TextEditingController productDesignerController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController locationController = TextEditingController();

TextEditingController februaryCounterController = TextEditingController();

Rx<ExperienceModel> experienceModelObj = ExperienceModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); productDesignerController.dispose(); nameController.dispose(); locationController.dispose(); februaryCounterController.dispose(); } 
onSelected(dynamic value) { for (var element in experienceModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} experienceModelObj.value.dropdownItemList.refresh(); } 
 }
