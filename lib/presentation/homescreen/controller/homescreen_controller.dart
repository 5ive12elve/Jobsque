import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../login_one_screen/controller/login_one_controller.dart';
import '../model/homescreen_model.dart';
import '../services/homescreen_service.dart';

class HomescreenController extends GetxController {
  TextEditingController searchController = TextEditingController();
  late Rx<HomescreenModel?> homescreenData = Rx<HomescreenModel?>(null);

  @override
  void onInit() {
    super.onInit();
    // Load homescreen data on initialization
    loadHomescreenData();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  Future<bool> loadHomescreenData() async {
    final String? token = await Get.find<LoginOneController>().getToken();

    if (token != null) {
      print('Fetching homescreen data...');
      try {
        homescreenData.value = await HomescreenService.fetchHomescreenData(token);
        print('Homescreen data loaded successfully: ${homescreenData.value}');
      } catch (e) {
        print('Failed to load homescreen data: $e');
      }
      update();
      return true;
    } else {
      print('Token is null.');
      return false;
    }
  }

}
