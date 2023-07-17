import 'package:flutter/material.dart';
import 'package:shared_prefrence/Resources/Ptefrence_servicies.dart';
import 'Screens/Splash_Screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefrenceSer.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shared Preference',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        // useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
