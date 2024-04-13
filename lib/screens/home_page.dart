import 'package:flutter/material.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../components/category_item.dart';
import 'colors_page.dart';
import 'family_members_page.dart';
import 'numbers_page.dart';

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
          Category(
            text: 'Numbers',
            color: const Color(0xffFFA944),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NumbersPage()),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff558B37),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FamilyMembersPage()),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff9056b6),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ColorsPage()),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff5cb9da),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PhrasesPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
