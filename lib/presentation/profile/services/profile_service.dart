import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/profile_model.dart';

class ProfileService {
  static Future<ProfileModel?> fetchUserProfile(String token) async {
    final url = 'https://project2.amit-learning.com/api/auth/profile';
    final headers = {'Authorization': 'Bearer $token'};

    try {
      final response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final profileData = responseData['data'];
        final profile = ProfileModel.fromJson(profileData);
        return profile;
      } else {
        // Handle error if needed
        print('Failed to fetch user profile');
        return null;
      }
    } catch (error) {
      print('Error: $error');
      return null;
    }
  }
}
