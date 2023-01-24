import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/ui/login_page.dart';
import 'package:flutter_application_1/utils/constant.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';

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
    _passwordConfirmController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("rendering");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: Consumer<UserProvider>(
        builder: (context, value, child) {
          return Stack(children: <Widget>[
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
                    borderRadius: BorderRadius.circular(10)),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Center(child: Text("Register Page")),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      width: 80,
                      height: 80,
                      child: TextFormField(
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "must not empty";
                          } else {
                            return null;
                          }
                        }),
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'email',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                        right: 30,
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
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      child: TextFormField(
                        obscureText: _isObscure,
                        obscuringCharacter: '*',
                        autofocus: true,
                        controller: _passwordConfirmController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Confirm Password',
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot password'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sudah memiliki akun?',
                          style: TextStyle(),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: const Text('Login'),
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
                        child: const Text('Register'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            /*
            ListView(
              children: [
                Text('Register akun'),
                Center(
                  child: Container(
                      height: 400,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                              child: const Text('Register'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              },
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          */
          ]);
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
