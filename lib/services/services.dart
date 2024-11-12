import 'package:dio/dio.dart';
import 'package:users_api/model/user_model.dart';

class UserServices {
  final baseUrl = "https://jsonplaceholder.typicode.com/users";
  final Dio dio = Dio();

  Future<List<UserModel>> getUsers() async {
    try {
      final response = await dio.get(baseUrl);
      return (response.data as List).map((e) => UserModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception("Error getting users: $e");
    }
  }
}
