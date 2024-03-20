import 'package:final_project/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [experience_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExperienceModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
