import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();

  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("rendering");
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<UserProvider>(
        builder: (context, value, child) {
          return ListView(
            children: [
              Text('Register akun'),
              Center(
                child: Container(
                    height: 400,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.center,
                          width: 80,
                          height: 80,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "must not empty";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          height: 50,
                          width: 80,
                          alignment: Alignment.center,
                          child: TextFormField(
                            obscureText: _isObscure,
                            obscuringCharacter: '*',
                            autofocus: true,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'Password',
                              suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            left: 20,
                            right: 20,
                          ),
                          height: 50,
                          width: 80,
                          alignment: Alignment.center,
                          child: TextFormField(
                            obscureText: _isObscure,
                            obscuringCharacter: '*',
                            autofocus: true,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'Password',
                              suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("forgot password"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Belum memiliki akun?'),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Daftar'),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 200,
                            right: 200,
                          ),
                          width: 20,
                          height: 40,
                          child: ElevatedButton(
                            child: const Text('Login'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          );
        },
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}
