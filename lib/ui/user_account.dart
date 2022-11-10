import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';
import 'package:provider/provider.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60), child: CustomAppbar()),
        body: Consumer<UserProvider>(
          builder: (context, value, child) {
            return SingleChildScrollView(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 4,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Center(child: Text("user data")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Account Name"),
                          Text("email"),
                          Text("nomer hp"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
