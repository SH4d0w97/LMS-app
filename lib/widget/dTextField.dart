import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dTextField extends StatelessWidget {
  const dTextField({
    this.hnt,
  });

  final String hnt;


  @override
  Widget build(BuildContext context){
    return TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: hnt,
        hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
        contentPadding: EdgeInsets.only(left: 20.0),
      ),
    );
  }
}