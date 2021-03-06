import 'package:executiveapp/widget/dTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicListFood extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

          padding: EdgeInsets.only(bottom:20,left: 10, right: 10),
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
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.only(bottom:20,left: 10, right: 10),
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
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.only(bottom:20,left: 10, right: 10),
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

class DynamicListJob extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.only(bottom:20,left: 10, right: 10),
          child: Column(
            children: [
              dTextField(hnt: "Job Description",),
              dTextField(hnt: "Date Scheduled",),
              dTextField(hnt: "Date Finished",),
              dTextField(hnt: "Remark",),
              dTextField(hnt: "Status",),
              dTextField(hnt: "Job ID",),
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5)
      ),
    );
  }
}

class DynamicListOverdue extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.only(bottom:20,left: 10, right: 10),
          child: Column(
            children: [
              dTextField(hnt: "Job ID",),
              dTextField(hnt: "Status",),
              dTextField(hnt: "Remark",),
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5)
      ),
    );
  }
}

class DynamicListProduct extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.only(bottom:20,left: 10, right: 10),
          child: Column(
            children: [
              dTextField(hnt: "Product Name",),
              dTextField(hnt: "Date",),
              dTextField(hnt: "Quantity",),
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5)
      ),
    );
  }
}