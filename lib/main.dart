import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toku App',
      theme: ThemeData(useMaterial3: false),
      home: const HomePage(),
    );
  }
}