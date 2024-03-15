// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final Number one = const Number(
    image: 'assets/images/numbers/number_one.png',
    jpName: 'ichi',
    enName: 'one',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Container(
        color: const Color(0xffFFA944),
        height: 100,
        child: Row(
          children: [
            Container(
              color: const Color(0xFFFFF6DC),
              child: Image.asset(one.image),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    one.jpName,
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    one.enName,
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
      ),
    );
  }
}

class Number {
  final String image;
  final String jpName;
  final String enName;
  const Number({
    required this.image,
    required this.jpName,
    required this.enName,
  });
}
