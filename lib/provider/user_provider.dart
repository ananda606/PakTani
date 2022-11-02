import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';

class UserProvider with ChangeNotifier {
  List<User> _userList = [];
  List<User> get userList => _userList;
}
