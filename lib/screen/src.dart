import 'package:flutter/material.dart';
import 'package:flutter_app/screen/home.dart';

class NotifikasiPage extends StatefulWidget {
  static const routeName = "notifikasiPage";

  @override
  _NotifikasiState createState() => new _NotifikasiState();
}


class _NotifikasiState extends State<NotifikasiPage>{
  List<Widget> containers = [
    Container(

    ),
    Container(

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Coba"
          ),
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.lightBlue,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Coba",style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "Coba1",style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}