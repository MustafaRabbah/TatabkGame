import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('تطابق'),
        backgroundColor: Colors.indigo,
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int RightImageNumber = 2;
  void RandomNumber() {
    RightImageNumber = Random().nextInt(6) + 1;
    leftImageNumber = Random().nextInt(7);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == RightImageNumber
              ? 'مبروك لقد نجحت '
              : "حاول مرة أخرى",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    RandomNumber();
                  });
                },
                child: Image.asset('images/$leftImageNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    RandomNumber();
                  });
                },
                child: Image.asset('images/$RightImageNumber.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
