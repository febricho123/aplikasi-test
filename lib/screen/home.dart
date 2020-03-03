//import 'dart:math';

//import 'dart:ffi';
//import 'dart:html';
import 'dart:ui';

import 'package:flutter_app/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/d1.dart';
import 'package:flutter_app/screen/upskill.dart';
import 'package:flutter_app/warna.dart';
import 'package:flutter_app/screen/login.dart';
import 'package:flutter_app/carousel_slider.dart';
import 'package:flutter_app/screen/src.dart';
import 'package:flutter_app/teacherprofil/profile.dart';
import 'package:flutter_app/userpeofile/userprof.dart';

class HomePage extends StatelessWidget{
  static const routeName = "/homePage";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              "Home",
              style: TextStyle(
                fontFamily: "Yu Gothic UI",
                fontSize: 29,
                color:Color(0xffefe6e6),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 208),
            ),
            SizedBox(
              width: 32,
              height: 32,
              child: FloatingActionButton(
                backgroundColor: Colors.white ,
                onPressed: () {Navigator.pushNamed(context, NotifikasiPage.routeName);},
                child: Icon(
                  Icons.notifications_active,
                  size: 22,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
            child:
              Column(
                  children: <Widget>[
                   Container(
                     color: Color(0xff506dcc),
                     width: double.infinity,
                     height: 1540,
                    child:
                      Column(
                        children: <Widget>[
                          _kedua(context),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          _ketiga(context),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          _keempat(context),
                        ],
                    ),
                  ),
                ],
          ),
      ),
    );
  }


  Widget _kedua(context) {
    return Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
           // color: Colors.white,
            image: DecorationImage(
              image: AssetImage("asset/4v3.png"),
              fit: BoxFit.fill,
            ),
          ),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget> [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: EdgeInsets.all(18),
                      margin: EdgeInsets.only(top: 30, left: 0,),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.0, color: Colors.black),
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.photo_camera,
                        size: 35,
                      ),
                    ),
                  ),
                    Padding(
                    padding: EdgeInsets.only(left: 20.0),
                  ),
                    Text(
                      "Hello, Dude",
                      style: TextStyle(
                        fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color:Color(0xfff5e8e8),
                      ),
                    ),
                  ],
                ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
          ),
          CarouselSlider(
            height: 180,
            items: ["asset/VueJS.png","asset/ReactNative.png","asset/ReactJS.png","asset/NodeJs.png","asset/Laravel.png"].map((i){
              return Builder(
                builder: (BuildContext context){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: GestureDetector(
                      child: Image.network(i, fit: BoxFit.fill),
                      onTap: (){
                        Navigator.pushNamed(context, TestPage.routeName);
                      },
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );



  }
  Widget _ketiga(context) {
    return Container(
      height: 480,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                Text(
                  "News",
                  style: TextStyle(
                    fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color:Color(0xff0f0e0e),
        ),
      ),
                Padding(
                  padding: EdgeInsets.only(left: 180.0),
                ),
                Text(
                    "Lihat Semua",
                    style: TextStyle(
                      fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color:Color(0xff0f0e0e),
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                ),
                Icon(
                  Icons.navigate_next
                ),
    ],

                 ),
                ],
              ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          CarouselSlider(
            height: 180,
            items: ["asset/django.png","asset/flutter.png","asset/Golang.png","asset/JavaSpring.png","asset/kotlin.png"].map((i){
              return Builder(
                builder: (BuildContext context){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: GestureDetector(
                      child: Image.network(i, fit: BoxFit.fill,),
                      onTap: (){
                        Navigator.pushNamed(context, TestPage.routeName);
                      },
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Row(
            children: <Widget>[
              Text(
                "Pengajar Populer",
                style: TextStyle(
                  fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color:Color(0xff0f0e0e),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70.0),
              ),
              Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color:Color(0xff0f0e0e),
                  ),
                ),

              Padding(
                padding: EdgeInsets.only(left: 10.0),
              ),
              Icon(
                Icons.navigate_next,
              ),
            ],
          ),
          CarouselSlider(
            height: 180,
            items: ["asset/1.png","asset/2.png","asset/3.png","asset/4.png","asset/bg.png"].map((i){
              return Builder(
                builder: (BuildContext context){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: GestureDetector(
                      child: Image.network(i, fit: BoxFit.fill,),
                      onTap: (){
                        Navigator.pushNamed(context, Profile.routeName);
                      },
                    ),
                  );
                },
              );
            }).toList(),
          ),
            ],
          ),
      );
  }
  Widget _keempat (context) {
    return Container(
        height: 700,
        width: double.infinity,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
    color: Colors.white,
    ),
      child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Disini Apa?",
                  style: TextStyle(
                    fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color:Color(0xff0f0e0e),
        ),
      ),
      ],
                ),
            Expanded(
              child:
              GridView.count(
                primary: false,
                padding: EdgeInsets.all(30.0),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/django.png"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/flutter.png"),
                         ),
                       ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/Golang.png"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/JavaSpring.png"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/kotlin.png"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/Laravel.png"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/NodeJs.png"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, TestPage.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/ReactJS.png"),
                        ),
                      ),
                    ),
                  ),
                   ],
                  ),
            )
                ],
              ),
            );
  }
  }
