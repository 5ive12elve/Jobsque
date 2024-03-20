import '../controller/messages_unread_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessagesUnreadOneScreen.
///
/// This class ensures that the MessagesUnreadOneController is created when the
/// MessagesUnreadOneScreen is first loaded.
class MessagesUnreadOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesUnreadOneController());
  }
}
