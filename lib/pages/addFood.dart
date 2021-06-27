import 'package:executiveapp/pages/FoodDetails.dart';
import 'package:executiveapp/widget/IconTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddFood extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,
      ),
      home: AddFoodPage(title: 'Add Food'),
    );
  }
}

class AddFoodPage extends StatefulWidget {
  AddFoodPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  AddFoodPageState createState() => AddFoodPageState();
}

class AddFoodPageState extends State<AddFoodPage> {

  view(context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodDetails()));
  }

  void back(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> FoodDetails()));
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
                  label: "Food",)
              ],
            ),
            Column(
              children: [
                IconTextField(iname: Icons.add_shopping_cart,
                  label: "Quantity",)
              ],
            ),
            Column(
              children: [
                IconTextField(iname: Icons.rate_review,
                  label: "Description",)
              ],
            ),
            SizedBox(height: 115,),
            Container(
              color: Colors.redAccent,
              width: 500,
              child: MaterialButton(
                child: Text("Submit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
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