import 'package:flutter/material.dart';
import '../Resources/TextStore.dart';

Widget listTileForHome(
    {required String title,
    required String subtitle,
    required int id,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: ListTile(
      selectedTileColor: Colors.purple,
      focusColor: Colors.purple,
      selectedColor: Colors.purple,
      onTap: () {
        showSnackBarForHome(context);
      },
      enabled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      leading: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.purple,
          child: Text(
            "$id",
            style: const TextStyle(fontSize: 26, color: Colors.white),
          )),
      title: Text(title, style: const TextStyle(color: Colors.black)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.black)),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
    ),
  );
}

void showSnackBarForHome(BuildContext context) {
  const snackBar = SnackBar(
    duration: Duration(seconds: 1),
    content: Text(TextStore.snackBarForHome,
        style: TextStyle(color: Colors.white, fontSize: 20)),
    backgroundColor: Colors.purple,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
