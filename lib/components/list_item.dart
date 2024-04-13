import 'package:flutter/material.dart';

import '../models/item_model.dart';
import 'item_info.dart';

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


