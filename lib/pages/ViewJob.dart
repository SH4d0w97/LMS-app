
import 'package:executiveapp/widget/dynamicListView.dart';
import 'package:flutter/material.dart';


class JobView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,
      ),
      home: JobViewPage(title: 'Jobs'),
    );
  }
}

class JobViewPage extends StatefulWidget {
  JobViewPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  JobViewPageState createState() => JobViewPageState();
}

class JobViewPageState extends State<JobViewPage> {
  List<DynamicListJob> DynamiList = [];


  void addDynamicJob() {
    DynamiList.add(DynamicListJob());

    setState(() {

    });

  }

  List<DynamicListOverdue> DynamiList1 = [];

  void addDynamicOverdue() {
    DynamiList1.add(DynamicListOverdue());

    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
        appBar: AppBar(
        bottom: TabBar(
        tabs: [
        Tab(text: "View Jobs",),
    Tab(text: "Overdue Jobs",),
    ],
    ),
    ),
    body: TabBarView(
        children: [
          Container(
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
                        itemBuilder: (_, index) => DynamiList[index]),
                ),
                Container(
                  color: Colors.white,
                  width: 500,
                  child: MaterialButton(
                    child: Text("Update Status",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () =>({addDynamicJob()}),
                  ),
                )
              ],
            ),
          ),

          //pending Job
          Container(
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
                      itemCount: DynamiList1.length,
                      itemBuilder: (_, index) => DynamiList1[index]),
                ),
                Container(
                  color: Colors.white,
                  width: 500,
                  child: MaterialButton(
                    child: Text(
                      "Update",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () =>({addDynamicOverdue()}),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
