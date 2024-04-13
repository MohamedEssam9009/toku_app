import 'package:flutter/material.dart';

import '../components/phrases_item.dart';
import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'Don\'t forget to subscribe',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka.',
      enName: 'How are you feeling',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae wa nandesuka',
      enName: 'what is your name',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae wa nandesuka',
      enName: 'what is your name',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, ikimasu',
      enName: 'yes I\'m coming',
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
            item: phrasesList[index],
            color: const Color(0xff5cb9da),
          );
        },
        itemCount: phrasesList.length,
      ),
    );
  }
}
