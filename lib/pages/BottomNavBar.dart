import 'package:executiveapp/pages/AddAnimal.dart';
import 'package:executiveapp/pages/Home.dart';
import 'package:flutter/material.dart';



class BottomBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,
      ),
      home: BottomBarPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class BottomBarPage extends StatefulWidget {
  BottomBarPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  BottomBarPageState createState() => BottomBarPageState();
}

class BottomBarPageState extends State<BottomBarPage> {

  int selectedindex = 0;

  final List<Widget> bod = [Home(),AddAnimal()];

  void onTabTapped(int index)
  {
    setState(() {
      selectedindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: bod[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  size: 30),
              title: Text(
                "Home",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.agriculture,
                   size: 30),
              title: Text(
                "Animal",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
                size: 30,
              ),
              title: Text(
                "Job",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),


        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.redAccent,
        onTap: onTabTapped,
        backgroundColor: Colors.black,
      ),
    );
  }
}
