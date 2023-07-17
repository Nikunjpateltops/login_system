import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_prefrence/HomePage/HomeScreen.dart';
import 'package:shared_prefrence/LoginPage/LoginScreen.dart';
import 'package:shared_prefrence/Resources/Ptefrence_servicies.dart';
import '../Resources/TextStore.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigation();
  }

  navigation() {
    bool isLogin = PrefrenceSer.getBool(TextStore.isLogin);
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                isLogin ? const HomeScreen() : const LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        height: double.infinity,
        width: double.infinity,
        child: const Center(
            child: Text(
          TextStore.splashScreenText,
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.w400, color: Colors.white),
        )),
      ),
    );
  }
}
