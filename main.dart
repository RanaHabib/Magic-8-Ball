import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Magic8Ball());
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xffe3c4a8),
          appBar: AppBar(
            backgroundColor: Color(0xff33313b),
            title: Text(
              'Magic 8 Ball',
              style: TextStyle(
                color: Color(0xff4592af),
              ),
            ),
          ),
          body: SafeArea(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                              onPressed: (){
                                setState(() {
                                  number =Random().nextInt(5)+1;
                                });
                              },
                              child: Image.asset('images/ball$number.png'),
                          ),
                          Text(
                            'Ask me anything then press on the magic ball',
                            style: TextStyle(
                              color: Color(0xff978d58),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ),
      );
  }
}
