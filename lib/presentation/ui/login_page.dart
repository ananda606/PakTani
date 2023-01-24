import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';

import 'package:flutter_application_1/utils/login_form.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/user_provider.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60), child: CustomAppbar()),
        body: Consumer<UserProvider>(builder: (context, value, child) {
          return Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black38,
              ),
              Center(
                child: Container(
                  height: 600,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: LoginForm(),
                ),
              ),
             
            ],
          );
        }));
  }

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}
