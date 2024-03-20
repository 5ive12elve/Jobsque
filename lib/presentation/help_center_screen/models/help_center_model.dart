import 'expandablelist_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [help_center_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HelpCenterModel {Rx<List<ExpandablelistItemModel>> expandablelistItemList = Rx(List.generate(6,(index) =>ExpandablelistItemModel()));

 }
