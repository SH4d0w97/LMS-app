
import 'package:executiveapp/pages/ViewAnimalDetails.dart';
import 'package:executiveapp/widget/IconTextField.dart';
import 'package:executiveapp/widget/MaterialButton1.dart';
import 'package:flutter/material.dart';


class AddAnimal extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,
      ),
      home: AddAnimalPage(title: "Animal Registration"),
    );
  }
}

class AddAnimalPage extends StatefulWidget {
  AddAnimalPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
    AddAnimalPageState createState() => AddAnimalPageState();
}

class AddAnimalPageState extends State<AddAnimalPage> {
  
  void displayAnimals(context){
   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ViewAnimal()));
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
        child: ListView(
          children:<Widget>[
           Column(
             children:<Widget>[
               SizedBox(height: 80,),
               Column(
                 children: [
                   IconTextField(label: "Animal ID",iname: Icons.account_circle,)
                 ],
               ),
            Column(
              children: [
                IconTextField(label: "Breed",iname: Icons.merge_type,)
              ],
            ),
            Column(
              children: [
                IconTextField(label: "Color",iname: Icons.color_lens,)
              ],
            ),
            Column(
              children: [
                IconTextField(label: "Section ID", iname: Icons.home_work,)
              ],
            ),
               Column(
                 children: [
                   IconTextField(label: "Weight",iname: Icons.workspaces_filled,)
                 ],
               ),
            SizedBox(height: 50,),
            Column(
              children: [
                MaterialButtonClass(buttonName: "Submit",
                  colr: Colors.black,fsize: 20,
                  btnbg:Colors.white,
                  funname: ()=> ({displayAnimals(context)}),
                ),
              ],
            ),
          ],
        ),
        ],
        ),
      ),

    );
  }
}
