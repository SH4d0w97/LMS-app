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
            ListView(
              padding: EdgeInsets.only(left: 50,right: 50,),
              children: [
                ListTile(title: Text("Animal ID"),),
                ListTile(title: Text("Breed"),),
                ListTile(title: Text("Color"),),
                ListTile(title: Text("Type"),),
              ],
            ),
      ]
      ),
      )

    );
  }
}
