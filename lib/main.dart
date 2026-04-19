import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(const MedUpLiteApp());
}

class MedUpLiteApp extends StatelessWidget {
  const MedUpLiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Katalog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: true),
      ),
      home: const LoginScreen(),
    );
  }
}
