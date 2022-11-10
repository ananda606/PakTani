import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppbar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("admin page"),
            Container(
              height: 20,
              width: 20,
              color: Colors.yellow,
            ),
          ],
        ));
  }
}
