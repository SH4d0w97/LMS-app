import 'package:executiveapp/pages/WeightDetails.dart';
import 'package:executiveapp/widget/IconTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddWeight extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,
      ),
      home: AddWeightPage(title: 'Add Weight'),
    );
  }
}

class AddWeightPage extends StatefulWidget {
  AddWeightPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  AddWeightPageState createState() => AddWeightPageState();
}

class AddWeightPageState extends State<AddWeightPage> {

  view(context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WeightDetails()));
  }

  void back(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> WeightDetails()));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () =>({back(context)}),
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black26,Colors.teal]
            )
        ),
        child: ListView(
          padding: EdgeInsets.only(top: 100,),
          children:<Widget>[
            SizedBox(height: 50,),
            Column(
              children: [
                IconTextField(iname: Icons.account_circle,
                  label: "Animal ID",)
              ],
            ),
            Column(
              children: [
                IconTextField(iname: Icons.medical_services,
                  label: "Weight",)
              ],
            ),
            Column(
              children: [
                IconTextField(iname: Icons.add_shopping_cart,
                  label: "Date",)
              ],
            ),
            Column(
              children: [
                IconTextField(iname: Icons.rate_review,
                  label: "Time",)
              ],
            ),
            SizedBox(height: 115,),
            Container(
              color: Colors.white,
              width: 500,
              child: MaterialButton(
                child: Text("Submit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                onPressed: () =>({view(context)}),
              ),
            )
          ],
        ),
      ),
    );
  }
}
