import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';
import 'package:provider/provider.dart';


class AdminProfilePage extends StatelessWidget {
  AdminProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppbar(),
        ),
        body: Consumer<UserProvider>(builder: (context, value, child) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              
                Text("admin page"),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.yellow,
                ),
              ],
            ),
          );
        }));
  }
}
