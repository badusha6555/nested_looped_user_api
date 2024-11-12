import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:users_api/model/user_model.dart';
import 'package:users_api/services/services.dart';

class UserProvider extends ChangeNotifier {
  List<UserModel> users = [];

  UserServices userServices = UserServices();

  bool isLoading = false;

  Future<List<UserModel>> getUsers() async {
    isLoading = true;
    notifyListeners();
    try {
      users = await userServices.getUsers();

      log("users is :$users");
      notifyListeners();
    } catch (e) {
      log("error is :$e");
    }
    isLoading = false;
    notifyListeners();
    return users;
  }
}
