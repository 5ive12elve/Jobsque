import 'package:final_project/core/app_export.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../login_one_screen/controller/login_one_controller.dart';
import '../models/profile_model.dart';
import '../services/profile_service.dart';

class ProfileController extends GetxController {
  late Rx<ProfileModel?> userProfile = Rx<ProfileModel?>(null);

  @override
  void onInit() {
    super.onInit();
    // Load user profile on initialization
    loadUserProfile();
  }

  Future<bool> loadUserProfile() async {
    // Get the token from the LoginController
    final String? token = await LoginOneController().getToken();

    if (token != null) {
      userProfile.value = await ProfileService.fetchUserProfile(token);
      update(); // Notify listeners about the change
      return true; // Indicate successful profile loading
    } else {
      // Handle the case where the token is null
      print('Token is null.');
      return false; // Indicate failure
    }
  }
}
