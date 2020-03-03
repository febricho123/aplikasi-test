

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/backendnav.dart';
import 'package:flutter_app/screen/forgot.dart';
import 'package:flutter_app/warna.dart';
import 'package:flutter_app/screen/register.dart';
import 'package:flutter_app/screen/home.dart';

class LoginPage extends StatelessWidget {
  static const routeName = "loginPage";
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
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                  _button2(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
  Widget _iconLogin(){
   // return Image.asset(" asset/image/1.png",
     // width: 150.0,
      //height: 150.0,
      return Image.network("https://devtalks.techinlabs.co/wp-content/uploads/2020/01/Up-Skill.png",
        width: 400.0,
        height: 300.0,
      );



  }

  Widget _titleDescription(){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8.0),
        ),
        Text(
          "WELCOME DUDE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        )
      ],
    );
  }

  Widget _textField(){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0 ),
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
              borderRadius: BorderRadius.all(Radius.elliptical(1000.5, 441.5)),
            ),
            hintText: "Email",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
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
              borderRadius: BorderRadius.all(Radius.elliptical(1000.5, 441.5)),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: ColorPalette.hintColor)
    ),
          style: TextStyle(color: Colors.white),
          obscureText: true,
          textAlign: TextAlign.center,
          autofocus: false,
        ),
      ],
    );
  }
  Widget _buildButton(BuildContext context){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 50.0,),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            margin: EdgeInsets.only(left: 0),
            width: 80,
            child: Text(
              'Login',
              style: TextStyle(color: ColorPalette.primaryColor),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, BottomNavBar.routeName);
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        FlatButton(
          padding: EdgeInsets.only(left: 0),
          child: Text(
           'Forgot Password?',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pushNamed(context, ForgotPage.routeName);
    }
        ),
      ],
    );
  }
  Widget _button2(BuildContext context){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 40.0),
        ),
        FlatButton(
            child: Text(
              'Daftar Sekarang',
              style: TextStyle(color: Colors.white),
            ),



            onPressed: () {
              Navigator.pushNamed(context, RegisterPage.routeName);
            }

        ),
      ],
    );
  }
}