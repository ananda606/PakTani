import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Text(
            'Welcome',
            style: TextStyle(
            
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          alignment: Alignment.center,
          width: 80,
          height: 80,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "must not empty";
              } else {
                return null;
              }
            },
            cursorColor: Colors.blue,
            controller: _emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: 'Email',
            ),
          ),
        ),
        const SizedBox(
          height: 20,
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
                child:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {
           
          },
          child: const Text('Forgot password'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Belum memiliki akun?'),
            TextButton(
              onPressed: () {
                
              },
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
            onPressed: () {
           
            },
          ),
        ),
      ],
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}
