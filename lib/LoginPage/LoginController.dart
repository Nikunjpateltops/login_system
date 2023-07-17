import 'package:flutter/material.dart';
import 'package:shared_prefrence/Resources/TextStore.dart';

Widget textFormFieldForLoginEmail(TextEditingController email) {
  return TextFormField(
    controller: email,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: const InputDecoration(
        label: Text("Enter Your Email"),
        hintText: "Abc123@gmail.com",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

Widget textFormFieldForLoginPassWord(TextEditingController password) {
  return TextFormField(
    controller: password,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: const InputDecoration(
        label: Text("Enter Your PassWord"),
        hintText: "Abc@123",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

Widget buttonForLogin(
    {required void Function()? onPressed, required String text}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle:
              const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 30, color: Colors.black),
      ));
}

void showSnackBarForLogin(BuildContext context) {
  SnackBar snackBar = const SnackBar(
    content: Text(TextStore.snackBarForLogin,
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.purple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
