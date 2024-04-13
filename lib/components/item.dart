import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF6DC),
            child: Image.asset(item.image!),
          ),
          Expanded(child: ItemInfo(itemModel: item)),
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemModel.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Text(
                itemModel.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28.0,
            ),
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(itemModel.sound));
            },
          ),
        ),
      ],
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100.0,
      child: ItemInfo(itemModel: item),
    );
  }
}
