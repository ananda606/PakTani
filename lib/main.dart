import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/provider/todo_provider.dart';
import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:flutter_application_1/ui/landing_page.dart';
import 'package:flutter_application_1/ui/login_page.dart';
import 'package:flutter_application_1/ui/register_page.dart';
import 'package:flutter_application_1/ui/keranjang.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/ui/homescreen.dart';
import 'package:flutter_application_1/ui/product_page.dart';
import 'package:flutter_application_1/ui/test_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        scrollBehavior: MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        home: test(),
      ),
    );
  }
}
