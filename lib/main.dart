import 'package:executiveapp/pages/BottomNavBar.dart';
import 'package:executiveapp/widget/InputField.dart';
import 'package:executiveapp/widget/MaterialButton1.dart';
import 'package:executiveapp/widget/verticalStyle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'LMS Executive App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void signin(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => BottomBar()));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
          colors: [Colors.black26, Colors.teal]),
    ),
      child: ListView(
        children:<Widget>[
      Column(
      children: <Widget>[
      Row(children: <Widget>[
        VerticalText(),
        SizedBox(width: 20,),
        TopMessage(),
          ]),
          SizedBox(height: 125,),
          Column(
            children: [
              InputField(label: "Username",obs: false,),
            ],
          ),

          Column(
            children: [
              InputField(label: "Password",obs: true,),
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              MaterialButtonClass(buttonName: "Sign In",
                colr: Colors.black,
                fsize: 20,btnbg:Colors.white,funname: ()=> ({signin(context)}),)
            ],
          ),

        ],
      ),
      ],
      ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
