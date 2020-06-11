import 'package:flutter/material.dart';
import 'dart:math';
import 'package:random_color/random_color.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me anything!'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    RandomColor _randomColor = RandomColor();
    return Container(
      color: _randomColor.randomColor(),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    ballNumber =
                        Random(DateTime.now().millisecond).nextInt(5) + 1;
                    print('ballNumber == $ballNumber');
                  });
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
