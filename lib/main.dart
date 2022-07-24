import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title:  Center(
            child: Text("Dicee",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var tempee_left = 6;
  var tempee_right = 6;
  var result = 12;

  func() {
    tempee_left = Random().nextInt(5) + 1;
    tempee_right = Random().nextInt(5) + 1;
    result = tempee_right + tempee_left;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    func();
                  });
                },
                style:
                    TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
                child: Image(
                  image: AssetImage('images/dice$tempee_left.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    func();
                  });
                },
                style:
                    TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
                child: Image(
                  image: AssetImage('images/dice$tempee_right.png'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Text("Total->$result",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
