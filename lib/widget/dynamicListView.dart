import 'package:executiveapp/widget/dTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicListView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Container(
          color: Colors.black26,
          padding: EdgeInsets.only(bottom:10,left: 10, right: 10),
          child: Column(
            children: [
              dTextField(hnt: "Animal ID",),
              dTextField(hnt: "Report",),
              dTextField(hnt: "Health Status",),
              dTextField(hnt: "Disease Detected",),
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5)
      ),
    );
  }
}