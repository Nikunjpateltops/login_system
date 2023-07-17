import 'package:flutter/material.dart';
import '../Resources/TextStore.dart';

Widget textFormFieldForSignupFirstName(TextEditingController fName) {
  return Expanded(
    child: TextFormField(
      controller: fName,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: const InputDecoration(
          label: Text("Enter  First  Name"),
          hintText: "Nikunj",
          focusColor: Colors.purple,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    ),
  );
}

Widget textFormFieldForSignupSecondName(TextEditingController sName) {
  return Expanded(
    child: TextFormField(
      controller: sName,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: const InputDecoration(
          label: Text("Enter  Second  Name"),
          hintText: "Patel",
          focusColor: Colors.purple,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    ),
  );
}

Widget textFormFieldForSignupEmail(TextEditingController email) {
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
        hintText: "Abc@gmail.com",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

Widget textFormFieldForSignupPassWord(TextEditingController password) {
  return TextFormField(
    controller: password,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: const InputDecoration(
        label: Text("Create Your password"),
        hintText: "Abc@123",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

Widget textFormFieldForSignupConfirmPassWord(TextEditingController cPassword) {
  return TextFormField(
    controller: cPassword,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: const InputDecoration(
        label: Text("Enter Confirm Password"),
        hintText: "Abc@123",
        focusColor: Colors.purple,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
  );
}

void showSnackBar3(BuildContext context) {
  SnackBar snackBar = const SnackBar(
    content: Text(TextStore.thankYouSignup,
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.purple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
