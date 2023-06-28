import 'package:flutter/material.dart';
import 'package:todo_app/Utils/router.dart';
import 'package:todo_app/Screens/Authentication/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), (){
      nextPageReplace(context, const LoginPage());
    });
  }
}
