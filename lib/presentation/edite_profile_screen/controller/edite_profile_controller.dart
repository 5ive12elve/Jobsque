import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../services/edit_profile_service.dart';

class EditeProfileController extends GetxController {
  final EditProfileService _editProfileService = Get.find<EditProfileService>();

  TextEditingController nameEditTextController = TextEditingController();
  TextEditingController bioEditTextController = TextEditingController();
  TextEditingController passEditTextController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    nameEditTextController.dispose();
    bioEditTextController.dispose();
    passEditTextController.dispose();
  }

  Future<void> updateProfile(String name, String password) async {
    try {
      await _editProfileService.updateNameAndPassword(name, password);
      // Handle success here, if needed
    } catch (error) {
      // Handle error here
      print('Error updating profile: $error');
    }
  }
}
