import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/portfolio_screen/models/portfolio_model.dart';/// A controller class for the PortfolioScreen.
///
/// This class manages the state of the PortfolioScreen, including the
/// current portfolioModelObj
class PortfolioController extends GetxController {Rx<PortfolioModel> portfolioModelObj = PortfolioModel().obs;

 }
