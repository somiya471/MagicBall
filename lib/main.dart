import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MagicBall"),
          backgroundColor: Colors.lightBlue,
        ),
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Row(
            children: [
              Expanded(child: TextButton(
                  onPressed: () {
                    onPress();
                  },
                  child: Image.asset("images/ball$ballno.png")))
            ],
          ),
        ),
      ),
    );
  }

  void onPress(){
    setState(() {
      ballno = Random().nextInt(5)+1;
    });
  }
}
