import 'category12_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [job_detail_description_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class JobDetailDescriptionTabContainerModel {Rx<List<Category12ItemModel>> category12ItemList = Rx(List.generate(3,(index) =>Category12ItemModel()));

 }
