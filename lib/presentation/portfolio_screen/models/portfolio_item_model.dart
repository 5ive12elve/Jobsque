import '../../../core/app_export.dart';/// This class is used in the [portfolio_item_widget] screen.
class PortfolioItemModel {PortfolioItemModel({this.uIUXDesigner, this.filesize, this.id, }) { uIUXDesigner = uIUXDesigner  ?? Rx("UI/UX Designer");filesize = filesize  ?? Rx("CV.pdf 300KB");id = id  ?? Rx(""); }

Rx<String>? uIUXDesigner;

Rx<String>? filesize;

Rx<String>? id;

 }
