import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';

final locator = GetIt.instance;
void init() {
  locator.registerLazySingleton(() => http.Client());
}
