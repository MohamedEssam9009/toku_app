import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color});

  String? text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24.0),
      alignment: Alignment.centerLeft,
      height: 65.0,
      width: double.infinity,
      color: color,
      child: Text(
        text!,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
