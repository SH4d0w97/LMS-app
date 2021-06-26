import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget {
  const IconTextField({

  this.label,
  this.iname});


  final String label;
  final IconData iname;


  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(top: 10, bottom:10, left: 50, right: 50),
      child: Container(
        width: 250,
        height: 60,
        child: TextField(
            textAlign: TextAlign.left,
          decoration: InputDecoration(
           /* border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ), */
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            contentPadding: EdgeInsets.only(bottom: 10.0, left: 10.0,right: 10.0),
            labelText: label,
            prefixIcon: Icon(iname),
          ),
        ),
      ),
    );
  }
}