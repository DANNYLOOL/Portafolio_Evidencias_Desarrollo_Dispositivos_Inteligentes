import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import 'dart:convert';

class UserDataSource {
  final String apiUrl;

  UserDataSource(this.apiUrl);

  Future<UserModel> fetchUser(String id) async {
    final response = await http.get(Uri.parse('$apiUrl/users/$id'));
    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }
}
