
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    this.label,
    this.obs,
});

  final String label;
  final bool obs;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
      child: Container(
        height: 60,
        width: 250,
          child: TextField(
            obscureText: obs,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
             /* border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
              ),*/
              labelStyle: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              contentPadding:
              EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
              labelText: label,
            ),
          ),
      ),
    );
  }
}