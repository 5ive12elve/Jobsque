import '../controller/portfolio_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PortfolioScreen.
///
/// This class ensures that the PortfolioController is created when the
/// PortfolioScreen is first loaded.
class PortfolioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PortfolioController());
  }
}
