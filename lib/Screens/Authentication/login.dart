import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/text_field.dart';
import 'package:todo_app/Widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email.clear();
    _password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  textField(
                      text: 'Email',
                      controller: _email,
                      hint: 'Enter your valid email address'),
                  textField(
                      text: 'Password',
                      controller: _password,
                      hint: 'Enter your secured password'),
                  //button
                  customButton(
                      onTap: () {},
                      text: 'Login',
                      context: context,
                      status: false),
                  SizedBox(
                    height: 10,
                    child: Row(
                      children: [
                        const Text('Don\'t have an account?'),
                        GestureDetector(
                            onTap: (){},
                            child: const Text('Register now'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
