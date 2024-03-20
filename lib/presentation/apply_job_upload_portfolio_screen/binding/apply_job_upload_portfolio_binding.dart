import '../controller/apply_job_upload_portfolio_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ApplyJobUploadPortfolioScreen.
///
/// This class ensures that the ApplyJobUploadPortfolioController is created when the
/// ApplyJobUploadPortfolioScreen is first loaded.
class ApplyJobUploadPortfolioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplyJobUploadPortfolioController());
  }
}
