import '../controller/announcement_received_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AnnouncementReceivedScreen.
///
/// This class ensures that the AnnouncementReceivedController is created when the
/// AnnouncementReceivedScreen is first loaded.
class AnnouncementReceivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnnouncementReceivedController());
  }
}
