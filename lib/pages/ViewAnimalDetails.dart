import 'package:executiveapp/widget/IconTextField.dart';
import 'package:executiveapp/widget/InputField.dart';
import 'package:executiveapp/widget/MaterialButton1.dart';
import 'package:flutter/material.dart';


class ViewAnimal extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        child: builtBottomNavMenu(),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
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
          onTap: () => ({addFood()}) ,
        ),
        ListTile(
          leading: Icon(Icons.fastfood),
          title: Text("Add Weight Details"),
          onTap: () => ({addFood()}) ,
        ),
        ListTile(
          leading: Icon(Icons.fastfood),
          title: Text("Add Med Details"),
          onTap: () => ({addFood()}) ,
        ),
      ],
    );
  }

  void addFood(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

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
