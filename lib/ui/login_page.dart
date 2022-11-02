import 'package:flutter/material.dart';

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
        appBar: AppBar(),
        body: Consumer<UserProvider>(builder: (context, value, child) {
          return Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black38,
              ),

              /*
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 200),
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ListView(children: [
                     
                      RichText(
                        text: const TextSpan(
                          text: '',
                          children: [
                            TextSpan(
                              text: 'SISTEM INFORMASI',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Sora',
                                  fontSize: 64),
                            ),
                            TextSpan(
                              text: '\nPENGAWASAN KONSTRUKSI',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sora',
                                fontSize: 64,
                              ),
                            )
                          ],
                          style: TextStyle(color: Colors.amber, fontSize: 30),
                        ),
                      ),
                    ]),
                  ),
                ),*/
              Center(
                child: Container(
                  height: 600,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const LoginForm(),
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
