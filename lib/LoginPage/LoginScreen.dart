import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_prefrence/HomePage/HomeScreen.dart';
import 'package:shared_prefrence/LoginPage/LoginController.dart';
import 'package:shared_prefrence/Resources/Ptefrence_servicies.dart';
import 'package:shared_prefrence/Resources/TextStore.dart';
import 'LoginWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  onTapLogin() {
    String data = PrefrenceSer.getString(TextStore.userDataKey);

    if (data != "") {
      List userDataList = jsonDecode(data);
      if (kDebugMode) {
        print("User -----> $userDataList");
      }

      bool isUser = userDataList.any((element) =>
          element["email"] == email.text && element["pass"] == password.text);

      if (isUser) {
        PrefrenceSer.setValue(key: TextStore.isLogin, value: true);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
        showSnackBarForLogin(context);
      } else {
        Fluttertoast.showToast(msg: "INVALID USER PLEASE ENTER VALID USER");
      }
    } else {
      Fluttertoast.showToast(msg: "NO USER FOUND PLEASE SIGNUP");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextStore.loginAppBarText,
            style: TextStyle(color: Colors.white, fontSize: 26)),
      ),
      body: loginBody(context,
          email: email, password: password, onTapLogin: onTapLogin),
    );
  }
}
