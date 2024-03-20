import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl;
  final storage = FlutterSecureStorage();

  AuthService(this.baseUrl);

  Future<bool> registerUser(String name, String email, String password) async {
    final response = await http.post(
      Uri.parse('https://project2.amit-learning.com/api/auth/register'), // Adjust the endpoint as per your API
      headers: <String, String>{
        'Content-Type': 'application/json', // Adjust content type if needed
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final reg_token = responseData['token'];
      await reg_saveToken(reg_token);
      return true;
    } else {
      print("Registration failed. Status Code: ${response.statusCode}, Response Body: ${response.body}");
      return false;
    }
  }
  Future<void> reg_saveToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  Future<String?> reg_getToken() async {
    return await storage.read(key: 'token');
  }

}
