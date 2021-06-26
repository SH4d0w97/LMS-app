import 'package:flutter/material.dart';

class VerticalText extends StatefulWidget {

  @override
  VerticalTextState createState() => VerticalTextState();
}

class VerticalTextState extends State<VerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 50),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}


class TopMessage extends StatefulWidget {
  @override
  TopMessageState createState() => TopMessageState();
}

class TopMessageState extends State<TopMessage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 5.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                'Livestock Management System, Executive App',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}