import 'package:flutter/material.dart';

import '../models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFA944),
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF6DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}