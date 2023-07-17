import 'package:flutter/material.dart';
import 'package:shared_prefrence/LoginPage/LoginScreen.dart';
import '../Resources/TextStore.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    actions: [
      IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
                (route) => false);
          },
          icon: const Icon(Icons.logout))
    ],
    title: const Text(TextStore.homeAppBarText,
        style: TextStyle(color: Colors.white, fontSize: 26)),
  );
}
