import 'package:flutter_app/pengaturan/screens/Pengaturan.dart';
import 'package:flutter/material.dart';
class App extends StatelessWidget {
  static const routeName = "app";

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengaturan"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Color(0xFF3594DD),
              Color(0xFF4563DB),
              Color(0xFF5036D5),
              Color(0xFF5B16D0),
            ],
          ),
        ),
        child: RegisterScreen(),
      ),
    );
  }
}