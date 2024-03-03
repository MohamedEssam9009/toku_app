import 'package:flutter/material.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toku App',
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff46322B),
          title: const Text('Toku'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 24.0),
              alignment: Alignment.centerLeft,
              height: 65.0,
              width: double.infinity,
              color: const Color(0xffEF9235),
              child: const Text(
                'Numbers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0),
              alignment: Alignment.centerLeft,
              height: 65.0,
              width: double.infinity,
              color: const Color(0xff558B37),
              child: const Text(
                'Family Members',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0),
              alignment: Alignment.centerLeft,
              height: 65.0,
              width: double.infinity,
              color: const Color(0xff9056b6),
              child: const Text(
                'Colors',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0),
              alignment: Alignment.centerLeft,
              height: 65.0,
              width: double.infinity,
              color: const Color(0xff5cb9da),
              child: const Text(
                'Pharases',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
