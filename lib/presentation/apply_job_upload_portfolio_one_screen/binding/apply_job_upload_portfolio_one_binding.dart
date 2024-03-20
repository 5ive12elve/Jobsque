import '../controller/apply_job_upload_portfolio_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ApplyJobUploadPortfolioOneScreen.
///
/// This class ensures that the ApplyJobUploadPortfolioOneController is created when the
/// ApplyJobUploadPortfolioOneScreen is first loaded.
class ApplyJobUploadPortfolioOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplyJobUploadPortfolioOneController());
  }
}
