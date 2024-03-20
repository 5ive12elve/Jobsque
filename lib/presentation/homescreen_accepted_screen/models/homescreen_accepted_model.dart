import 'category18_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [homescreen_accepted_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomescreenAcceptedModel {
  Rx<List<Category18ItemModel>> category18ItemList =
      Rx(List.generate(3, (index) => Category18ItemModel()));
}
