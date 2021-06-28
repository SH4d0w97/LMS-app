
import 'package:executiveapp/pages/AddAnimal.dart';
import 'package:executiveapp/pages/AddProducts.dart';
import 'package:executiveapp/pages/FoodDetails.dart';
import 'package:executiveapp/pages/MedDetails.dart';
import 'package:executiveapp/pages/WeightDetails.dart';
import 'package:executiveapp/widget/InputField.dart';
import 'package:executiveapp/widget/MaterialButton1.dart';
import 'package:flutter/material.dart';


class ViewAnimal extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,

      ),
      home: ViewAnimalPage(title: 'Animal Details'),
    );
  }
}

class ViewAnimalPage extends StatefulWidget {
  ViewAnimalPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ViewAnimalPageState createState() => ViewAnimalPageState();
}

class ViewAnimalPageState extends State<ViewAnimalPage> {

  void _onButtonPressed(context){
    showModalBottomSheet(
        context: context,
        builder: (context){
      return Container(
        color: Colors.black26,
        height: 250,
        child: Container(
        child: builtBottomNavMenu(),
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
          );
    });
  }

  Column  builtBottomNavMenu() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.fastfood),
          title: Text("Add Food Details"),
          onTap: () => ({food()}) ,
        ),
        ListTile(
          leading: Icon(Icons.workspaces_filled),
          title: Text("Add Weight Details"),
          onTap: () => ({weight()}) ,
        ),
        ListTile(
          leading: Icon(Icons.medical_services),
          title: Text("Add Medicine Details"),
          onTap: () => ({med()}) ,
        ),
        ListTile(
          leading: Icon(Icons.settings_input_composite_rounded),
          title: Text("Add Product Details"),
          onTap: () => ({product()}) ,
        ),
      ],
    );
  }


  //FoodDetailsPage
  void food(){
    Navigator.pop(context);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>FoodDetails()));
  }

  //WeightDetails
  void weight(){
    Navigator.pop(context);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>WeightDetails()));
  }

  //MedDetails
  void med(){
    Navigator.pop(context);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MedDetails()));
  }

  void product(){
    Navigator.pop(context);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>AddProduct()));
  }

  //BackButton
  void back(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> AddAnimal()));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back_ios,), onPressed: () =>({back(context)}),),
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black26, Colors.teal]
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('images/cattle.jpg'),
                        fit:BoxFit.cover
                    ),
        ),
      ),
            SizedBox(height: 20,),
            Container(
              width: 400,
              height: 350,
              child: ListView(
                children: [
                  ListTile(
                    title: InputField(label: "Animal ID",obs: false,),
                  ),
                  ListTile(
                    title: InputField(label: "Breed",obs: false,),
                  ),
                  ListTile(
                    title: InputField(label: "Color",obs: false,),
                  ),ListTile(
                    title: InputField(label: "Type",obs: false,),
                  ),
                ],
              ),
            ),
            MaterialButtonClass(buttonName: "More..",
              colr: Colors.white,fsize: 20,
              funname:()=> ({_onButtonPressed(context)}),)
      ],
      ),
      ),

    );
  }
}
