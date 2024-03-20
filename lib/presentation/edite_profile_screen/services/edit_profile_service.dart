import 'package:dio/dio.dart';
import 'package:final_project/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../login_one_screen/controller/login_one_controller.dart';

class EditProfileService {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> updateNameAndPassword(String name, String password) async {
    try {
      final String? token = await LoginOneController().getToken();

      if (token == null) {
        throw Exception('Failed to get token');
      }

      final response = await _dio.post(
        'https://project2.amit-learning.com/api/auth/user/update',
        data: {
          'name': name,
          'password': password,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      // Check if the request was successful
      if (response.statusCode == 200) {
        Get.snackbar(
          'Profile Updated',
          'Changes will take effect on next login.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        return response.data as Map<String, dynamic>;
      } else {

        // If the request was not successful, throw an error with the response status message
        throw Exception('Failed to update profile: ${response.statusMessage}');
      }
    } catch (error) {
      // Handle error here
      print('Error updating profile: $error');
      throw Exception('Failed to update profile');
    }
  }
}
