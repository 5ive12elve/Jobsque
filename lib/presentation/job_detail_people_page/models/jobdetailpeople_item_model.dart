import '../../../core/app_export.dart';/// This class is used in the [jobdetailpeople_item_widget] screen.
class JobdetailpeopleItemModel {JobdetailpeopleItemModel({this.dimasAdiSaputro, this.dimasAdiSaputro1, this.seniorUIUXDesigner, this.workDuring, this.duration, this.id, }) { dimasAdiSaputro = dimasAdiSaputro  ?? Rx(ImageConstant.imgDimasProfile);dimasAdiSaputro1 = dimasAdiSaputro1  ?? Rx("Dimas Adi Saputro");seniorUIUXDesigner = seniorUIUXDesigner  ?? Rx("Senior UI/UX Designer at Twitter");workDuring = workDuring  ?? Rx("Work during");duration = duration  ?? Rx("5 Years");id = id  ?? Rx(""); }

Rx<String>? dimasAdiSaputro;

Rx<String>? dimasAdiSaputro1;

Rx<String>? seniorUIUXDesigner;

Rx<String>? workDuring;

Rx<String>? duration;

Rx<String>? id;

 }
