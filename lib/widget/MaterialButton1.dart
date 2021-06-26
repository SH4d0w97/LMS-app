
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialButtonClass extends StatelessWidget {
  const MaterialButtonClass({
    this.buttonName,
    this.colr,
    this.funname,
    this.fsize,
    this.btnbg,
  });

  final String buttonName;
  final Color colr;
  final Function funname;
  final double fsize;
  final Color btnbg;


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        buttonName,
        style: TextStyle(
          fontSize: fsize,
          color: colr,
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      onPressed: funname,
      color: btnbg,
      minWidth: 250,
      height: 50,

    );
  }
}