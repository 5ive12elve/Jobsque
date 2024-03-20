import '../../../core/app_export.dart';import 'portfolio_item_model.dart';/// This class defines the variables used in the [portfolio_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PortfolioModel {Rx<List<PortfolioItemModel>> portfolioItemList = Rx([PortfolioItemModel(uIUXDesigner: "UI/UX Designer".obs,filesize: "CV.pdf 300KB".obs),PortfolioItemModel(uIUXDesigner: "3D Designer".obs,filesize: "CV.pdf 300KB".obs),PortfolioItemModel(uIUXDesigner: "Graphik Designer".obs,filesize: "CV.pdf 300KB".obs)]);

 }
