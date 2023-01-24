import 'dart:ui';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:flutter_application_1/presentation/ui/profile/admin_profile_page.dart';
import 'package:flutter_application_1/provider/todo_provider.dart';
import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:flutter_application_1/presentation/ui/landing_page.dart';
import 'package:flutter_application_1/presentation/ui/login_page.dart';
import 'package:flutter_application_1/presentation/ui/profile/user_profile_page.dart';
import 'package:flutter_application_1/presentation/ui/register_page.dart';
import 'package:flutter_application_1/presentation/ui/keranjang_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/presentation/ui/homescreen.dart';
import 'package:flutter_application_1/presentation/ui/product_page.dart';
//import 'package:flutter_application_1/ui/test_page.dart';
import 'package:flutter_application_1/utils/ecommerce_template.dart';
import 'package:flutter_application_1/presentation/ui/detail_product_page.dart';

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
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        home: KeranjangPage(),
      ),
    );
  }
}
