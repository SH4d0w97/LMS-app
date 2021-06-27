import 'package:executiveapp/pages/ViewAnimalDetails.dart';
import 'package:executiveapp/widget/dynamicListView.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: FoodDetailsPage(title: 'Medical Report Animal'),
    );
  }

}

class FoodDetailsPage extends StatefulWidget {
  FoodDetailsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MedicalReportAPageState createState() => MedicalReportAPageState();
}

class MedicalReportAPageState extends State<FoodDetailsPage> {

  List<DynamicListView> DynamiList = [];

  void addDynamicList() {
    DynamiList.add(DynamicListView());

    setState(() {

    });

  }

  void addReport(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> null));
  }

  void back(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ViewAnimal()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>({back(context)}),
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black26, Colors.orangeAccent]
          ),
        ),
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    itemCount: DynamiList.length,
                    itemBuilder: (_, index) => DynamiList[index])
            ),

            /* Container(
              color: Colors.red,
              width: 500,
              child: MaterialButton(
                    child: Text("Submit",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    ),
                onPressed: null,
              ),
            )
            */

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.black87,
        onPressed: () => ({addDynamicList()}),
        //onPressed: () => ({addReport(context)}),
      ),
    );
  }
}