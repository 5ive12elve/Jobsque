import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/apply_now_model.dart';

class ApplyNowController {
  final String apiUrl = 'https://your-api-url.com/'; // Replace with your actual API URL
  final String authToken; // Replace with your actual authentication token

  ApplyNowController(this.authToken);

  Future<ApplyNowModel> fetchData() async {
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {'Authorization': 'Bearer $authToken'},
    );

    if (response.statusCode == 200) {
      return ApplyNowModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
