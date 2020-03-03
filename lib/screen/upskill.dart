//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/curved_navigation_bar.dart';
import 'package:flutter_app/carousel_slider.dart';
import 'package:flutter_app/warna.dart';
import 'package:flutter_app/flappy_search_bar.dart';
import 'package:flutter_app/screen/kelas.dart';
import 'package:flutter_app/screen/d1.dart';
import 'package:flutter_app/screen/src.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}


class SkillPage extends StatelessWidget{
  static const routeName = "skillPage";

  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              "UpSkill",
              style: TextStyle(
                fontFamily: "Yu Gothic UI",
                fontSize: 29,
                color:Color(0xffefe6e6),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150),
            ),
            SizedBox(
              width: 32,
              height: 32,
              child: FloatingActionButton(
                backgroundColor: Colors.white ,
                heroTag: "btn1",
                onPressed: () {},
                child: Icon(
                  Icons.shopping_cart,
                  size: 22,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
            ),
            SizedBox(
              width: 32,
              height: 32,
              child: FloatingActionButton(
                backgroundColor: Colors.white ,
                heroTag: "btn2",
                onPressed: () {
                  Navigator.pushNamed(context, NotifikasiPage.routeName);
                },
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
              height: 820,
              child:
              Column(
                children: <Widget>[
                  _kedua(),
                  Padding(
                    padding: EdgeInsets.only(top: 0.0),
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
  Widget _kedua() {
    return Container(
        height: 80,
        width: double.infinity,
        color: Colors.blueAccent,
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SearchBar<Post>(
                onSearch: search,
                onItemFound: (Post post, int index) {
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.description),
                  );
                },
              ),
            ),
          ),
        )
    );
  }
  Widget _ketiga(context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, TestPage.routeName);
      },
      child: Container(
        height: 240,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/flutter.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
  Widget _keempat(BuildContext context) {
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
                    "Kelas Terbaru",
                    style: TextStyle(
                      fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color:Color(0xff0f0e0e),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 110.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, KPage.routeName);
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Lihat Semua",
                          style: TextStyle(
                            fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w300,
                            fontSize: 15,
                            color:Color(0xff0f0e0e),
                          ),
                        ),
                        Icon(Icons.navigate_next),
                      ],
                    ),
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
                "Kelas Populer",
                style: TextStyle(
                  fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color:Color(0xff0f0e0e),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 110.0),
              ),
            ],
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
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
