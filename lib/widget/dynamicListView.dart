import 'package:executiveapp/widget/dTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicListFood extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Container(
          color: Colors.black26,
          padding: EdgeInsets.only(bottom:10,left: 10, right: 10),
          child: Column(
            children: [
              dTextField(hnt: "Animal ID",),
              dTextField(hnt: "Food",),
              dTextField(hnt: "Quantity",),
              dTextField(hnt: "Description",),
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5)
      ),
    );
  }
}

class DynamicListWeight extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Container(
          color: Colors.black26,
          padding: EdgeInsets.only(bottom:10,left: 10, right: 10),
          child: Column(
            children: [
              dTextField(hnt: "Animal ID",),
              dTextField(hnt: "Weight",),
              dTextField(hnt: "Date",),
              dTextField(hnt: "Time",),
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5)
      ),
    );
  }
}

class DynamicListMed extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Container(
          color: Colors.black26,
          padding: EdgeInsets.only(bottom:10,left: 10, right: 10),
          child: Column(
            children: [
              dTextField(hnt: "Animal ID",),
              dTextField(hnt: "Medicine Name",),
              dTextField(hnt: "Quantity",),
              dTextField(hnt: "Description",),
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5)
      ),
    );
  }
}