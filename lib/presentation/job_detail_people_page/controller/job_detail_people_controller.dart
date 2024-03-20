import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/job_detail_people_page/models/job_detail_people_model.dart';/// A controller class for the JobDetailPeoplePage.
///
/// This class manages the state of the JobDetailPeoplePage, including the
/// current jobDetailPeopleModelObj
class JobDetailPeopleController extends GetxController {JobDetailPeopleController(this.jobDetailPeopleModelObj);

Rx<JobDetailPeopleModel> jobDetailPeopleModelObj;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in jobDetailPeopleModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} jobDetailPeopleModelObj.value.dropdownItemList.refresh(); } 
 }
