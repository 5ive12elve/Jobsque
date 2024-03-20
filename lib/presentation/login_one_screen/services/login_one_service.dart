import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/login_one_model.dart';

class LoginOneService {
  static Future<LoginOneModel?> loginUser(String email, String password) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      final Map<String, dynamic> body = {'email': email, 'password': password};

      final response = await http.post(
        Uri.parse('https://project2.amit-learning.com/api/auth/login'),
        headers: headers,
        body: jsonEncode(body),
      );

      print('HTTP Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        return LoginOneModel.fromJson(json);
      } else {
        // Handle error or return null
        print('Login failed. HTTP Status Code: ${response.statusCode}');
        print('Response body: ${response.body}');
        return null;
      }
    } catch (error) {
      // Handle network or other errors
      print('Login failed: $error');
      return null;
    }
  }
}
