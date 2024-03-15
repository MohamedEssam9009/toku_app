import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

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
              child: Image.asset('assets/images/numbers/number_one.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ichi',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    'one',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
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
