import 'package:get/get.dart';
import '../models/create_account_three_model.dart';
import '../models/createaccountthreegrid_item_model.dart';

class CreateAccountThreeController extends GetxController {
 Rx<CreateAccountThreeModel> createAccountThreeModelObj = CreateAccountThreeModel().obs;
 RxList<String> userSelection = <String>[].obs;

 void toggleSelectedUIUX(CreateaccountthreegridItemModel item) {
  item.isSelectedUIUX.toggle();
  if (item.isSelectedUIUX.value) {
   userSelection.add(item.uIUXDesigner!.value);
  } else {
   userSelection.remove(item.uIUXDesigner!.value);
  }
 }

 void toggleSelectedIlustrator(CreateaccountthreegridItemModel item) {
  item.isSelectedIlustrator.toggle();
  // Add logic for Ilustrator role if needed
 }

 void toggleSelectedDeveloper(CreateaccountthreegridItemModel item) {
  item.isSelectedDeveloper.toggle();
  // Add logic for Developer role if needed
 }

 void toggleSelectedManagement(CreateaccountthreegridItemModel item) {
  item.isSelectedManagement.toggle();
  // Add logic for Management role if needed
 }

 void toggleSelectedInformation(CreateaccountthreegridItemModel item) {
  item.isSelectedInformation.toggle();
  // Add logic for Information role if needed
 }

 void toggleSelectedResearch(CreateaccountthreegridItemModel item) {
  item.isSelectedResearch.toggle();
  // Add logic for Research role if needed
 }
}
