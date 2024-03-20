import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/homescreen_model.dart';

class HomescreenService {
  static Future<HomescreenModel> fetchHomescreenData(String token) async {
    final Uri uri = Uri.parse('https://project2.amit-learning.com/api/jobs');
    final response = await http.get(
      uri,
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      return HomescreenModel.fromJson(responseData);
    } else {
      throw Exception('Failed to load homescreen data: ${response.statusCode}');
    }
  }
}
