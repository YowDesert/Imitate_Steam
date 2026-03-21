import 'package:flutter/material.dart';
import 'pages/steam_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steam Clone',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF1B1E2B)),
      home: const SteamHomePage(),
    );
  }
}
