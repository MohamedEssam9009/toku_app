import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'Musume',
      enName: 'family daughter',
      sound: 'assets/sounds/family_members/daughter.wav',
    ),
    ItemModel(
      jpName: 'Chichioya',
      enName: 'family father',
      sound: 'assets/sounds/family_members/father.wav3',
    ),
    ItemModel(
      jpName: 'Sofu',
      enName: 'grand father',
      sound: 'assets/sounds/family_members/grand father.wav',
    ),
    ItemModel(
      jpName: 'Sobo',
      enName: 'grand mother',
      sound: 'assets/sounds/family_members/grand mother.wav',
    ),
    ItemModel(
      jpName: 'Hahaoya',
      enName: 'family mother',
      sound: 'assets/sounds/family_members/mother.wav',
    ),
    ItemModel(
      jpName: 'Ani',
      enName: 'older brother',
      sound: 'assets/sounds/family_members/older bother.wav',
    ),
    ItemModel(
      jpName: 'Ane',
      enName: 'older sister',
      sound: 'assets/sounds/family_members/older sister.wav',
    ),
    ItemModel(
      jpName: 'Musuko',
      enName: 'family son',
      sound: 'assets/sounds/family_members/son.wav',
    ),
    ItemModel(
      jpName: 'Otōto',
      enName: 'younger brother',
      sound: 'assets/sounds/family_members/younger brohter.wav',
    ),
    ItemModel(
      jpName: 'Imōto',
      enName: 'younger sister',
      sound: 'assets/sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff5cb9da),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: phrases[index],
            color: const Color(0xff5cb9da),
          );
        },
        itemCount: phrases.length,
      ),
    );
  }
}
