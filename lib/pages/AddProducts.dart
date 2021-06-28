import 'package:executiveapp/pages/ViewAnimalDetails.dart';
import 'package:executiveapp/widget/IconTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddProduct extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,
      ),
      home: AddProductPage(title: 'Add Products'),
    );
  }
}

class AddProductPage extends StatefulWidget {
  AddProductPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  AddProductPageState createState() => AddProductPageState();
}

class AddProductPageState extends State<AddProductPage> {



  void back(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ViewAnimal()));
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
          padding: EdgeInsets.only(top: 150,),
          children:<Widget>[
            SizedBox(height: 50,),
            Column(
              children: [
                IconTextField(iname: Icons.pages_rounded,
                  label: "Product Name",)
              ],
            ),
            Column(
              children: [
                IconTextField(iname: Icons.production_quantity_limits,
                  label: "Quantity",)
              ],
            ),

            SizedBox(height: 225,),
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
                onPressed: () =>({}),
              ),
            )
          ],
        ),
      ),
    );
  }
}
