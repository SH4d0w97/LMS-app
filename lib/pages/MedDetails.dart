import 'package:executiveapp/pages/AddMed.dart';
import 'package:executiveapp/pages/ViewAnimalDetails.dart';
import 'package:executiveapp/widget/dynamicListView.dart';
import 'package:flutter/material.dart';

class MedDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MedDetailsPage(title: 'Medicine Details'),
    );
  }

}

class MedDetailsPage extends StatefulWidget {
  MedDetailsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MedDetailsPageState createState() => MedDetailsPageState();
}

class MedDetailsPageState extends State<MedDetailsPage> {

  List<DynamicListMed> DynamiList = [];

  void addDynamicList() {
    DynamiList.add(DynamicListMed());

    setState(() {

    });
  }

  void addMedDetail(context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => AddMed()));
  }

  void back(context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ViewAnimal()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => ({back(context)}),
            icon: Icon(Icons.arrow_back_ios)),
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
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    itemCount: DynamiList.length,
                    itemBuilder: (_, index) => DynamiList[index])
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.black87,
        //onPressed: () => ({addDynamicList()}),
        onPressed: () => ({addMedDetail(context)}),
      ),
    );
  }
}