import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/warna.dart';

class ForgotPage extends StatelessWidget {
  static const routeName = "/forgotPage";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _titleDescription(),
                  _textBuild(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 180.0),
        ),
        Text(
          "Forgot password",
          style: TextStyle(
            fontFamily: "Lato",fontWeight: FontWeight.w300,
            fontSize: 40,
            color:Color(0xffffffff),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        Text(
          "Enter your email address, we’ll send you the \ninstructions on how to change your password",
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14,
            color:Color(0xffffffff).withOpacity(0.60),
          ),
        ),
      ],
    );
  }
  Widget _textBuild() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 36.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(1000.5, 441.5)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText:
            "EMAIL ADDRESS",
            hintStyle: TextStyle(color: ColorPalette.hintColor,),
          ),
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
          autofocus: false,
    ),
    ]
    );
  }
  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 36.0),
        ),
        RaisedButton(
          shape: StadiumBorder(),
          color: Colors.red,
          child: Text(
            'SEND',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
        ),
      ],
    );
  }
}