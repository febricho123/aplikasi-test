import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
 static const routeName = "/testPage";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Leading"),
      ),
      body: Center(
        child: Text("SOON BROTHER",style: TextStyle(fontSize: 40),),
      ),
    );
  }
}