import 'package:executiveapp/pages/AddProducts.dart';
import 'package:executiveapp/pages/addWeight.dart';
import 'package:executiveapp/widget/dynamicListView.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: ProductDetailsPage(title: 'Product Details'),
    );
  }

}

class ProductDetailsPage extends StatefulWidget {
  ProductDetailsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ProductDetailsPageState createState() => ProductDetailsPageState();
}

class ProductDetailsPageState extends State<ProductDetailsPage> {

  List<DynamicListProduct> DynamiList = [];

  void addDynamicProduct() {
    DynamiList.add(DynamicListProduct());

    setState(() {

    });

  }

  void addProduct(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> AddProduct()));
  }

  void back(context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> null));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>({addProduct(context)}),
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
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.black87,
        onPressed: () => ({addDynamicProduct()}),
      ),
    );
  }
}