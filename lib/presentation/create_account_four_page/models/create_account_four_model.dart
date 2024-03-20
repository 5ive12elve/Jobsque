import 'countryselection_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [create_account_four_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateAccountFourModel {Rx<List<CountryselectionItemModel>> countryselectionItemList = Rx(List.generate(13,(index) =>CountryselectionItemModel()));

 }
