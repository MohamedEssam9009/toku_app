import 'package:flutter/material.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(text: 'Numbers', color: const Color(0xffFFA944)),
          Category(text: 'Family Members', color: const Color(0xff558B37)),
          Category(text: 'Colors', color: const Color(0xff9056b6)),
          Category(text: 'Phrases', color: const Color(0xff5cb9da)),
        ],
      ),
    );
  }
}