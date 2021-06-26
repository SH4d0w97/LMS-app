import 'package:flutter/cupertino.dart';
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(20.0),
                child: Text("Animal Details",style:
                  TextStyle(
                    fontSize: 30, letterSpacing: 1.5,
                    color: Colors.white),
                  ),
                ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width:5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage("assets/cattle.jpg"),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 270, left: 184),
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                
              ),
            ),
          )
        ],
      )

    );
  }
}
