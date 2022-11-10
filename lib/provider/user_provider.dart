import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> _userList = [];
  List<UserModel> get userList => _userList;
  void addUser(UserModel user) {
    _userList.add(user);
    notifyListeners();
  }
}
