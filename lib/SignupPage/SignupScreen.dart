import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_prefrence/Resources/Ptefrence_servicies.dart';
import '../Resources/TextStore.dart';
import 'SignupController.dart';
import 'SignupWidget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassWord = TextEditingController();

  Future<void> onTapSignup() async {
    List userList = [];

    String data = PrefrenceSer.getString(TextStore.userDataKey);

    if (data != "") {
      userList = jsonDecode(data);
      userList.add({
        "email": email.text,
        "pass": password.text,
        "fName": fName.text,
        "lName": lName.text,
        "cPass": cPassWord.text
      });
    } else {
      userList.add({
        "email": email.text,
        "pass": password.text,
        "fName": fName.text,
        "lName": lName.text,
        "cPass": cPassWord.text
      });
    }

    await PrefrenceSer.setValue(
        key: TextStore.userDataKey, value: jsonEncode(userList));

    if (!mounted) return;
    Navigator.of(context).pop();
    showSnackBar3(context);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(TextStore.signUpPage,
              style: TextStyle(color: Colors.white, fontSize: 26)),
        ),
        body: signUpBody(context,
            fName: fName,
            lName: lName,
            email: email,
            password: password,
            cPassword: cPassWord,
            onTapSignUp: onTapSignup));
  }
}
