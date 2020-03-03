import 'package:flutter/material.dart';
import 'package:flutter_app/carousel_slider.dart';
import 'package:flutter_app/warna.dart';


class KPage extends StatefulWidget {
  static const routeName = "kPage";
  @override
  _SearchAppBarState createState() => new _SearchAppBarState();
}

class _SearchAppBarState extends State<KPage> {
  Widget appBarTitle = new Text("Skill");
  Icon actionIcon = new Icon(Icons.search);
  Icon chart = new Icon(Icons.shopping_cart);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: false,
          title:appBarTitle,
          actions: <Widget>[
            new IconButton(icon: actionIcon,onPressed:(){
              setState(() {
                if ( this.actionIcon.icon == Icons.search){
                  this.actionIcon = new Icon(Icons.close);
                  this.appBarTitle = new TextField(
                    style: new TextStyle(
                      color: Colors.white,

                    ),
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search,color: Colors.white),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)
                    ),
                  );}
                else {
                  this.actionIcon = new Icon(Icons.search);
                  this.appBarTitle = new Text("Skill");
                }
              });
            },
            ),
          ]
      ),
      body: SingleChildScrollView(
        child:
        Column(
          children: <Widget>[
            Container(
              color: Color(0xff506dcc),
              width: double.infinity,
              height: 1140,
              child:
              Column(
                children: <Widget>[
                  _kedua(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  _ketiga(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  //_keempat(),
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
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white)
      ),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Rekomendasi",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Microsoft YaHei",fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color:Color(0xff0f0e0e),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(top: 20),
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
  Widget _ketiga() {
    return Container(
      height: 780,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.red,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("asset/kotlin.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                Column(
                  children: <Widget>[
                    Text(
                        "Judul disini"
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Rp1500000",
                          style: TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0),
                        ),
                        Text(
                            "Menjadi Rp0"
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 65),
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            margin: EdgeInsets.only(left: 5),
                            width: 80,
                            child: Text(
                              'Buy',
                              style: TextStyle(color: ColorPalette.primaryColor),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onTap: () {
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          size: 22,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.red,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("asset/flutter.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                Column(
                  children: <Widget>[
                    Text(
                        "Judul disini"
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Rp1500000",
                          style: TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0),
                        ),
                        Text(
                            "Menajadi Rp0"
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 65),
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            margin: EdgeInsets.only(left: 5),
                            width: 80,
                            child: Text(
                              'Buy',
                              style: TextStyle(color: ColorPalette.primaryColor),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onTap: () {
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          size: 22,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.red,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("asset/VueJS.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                Column(
                  children: <Widget>[
                    Text(
                        "Judul disini"
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Rp1500000",
                          style: TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0),
                        ),
                        Text(
                            "Menajadi Rp0"
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 65),
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            margin: EdgeInsets.only(left: 5),
                            width: 80,
                            child: Text(
                              'Buy',
                              style: TextStyle(color: ColorPalette.primaryColor),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onTap: () {
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          size: 22,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.red,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("asset/ReactNative.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                Column(
                  children: <Widget>[
                    Text(
                        "Judul disini"
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Rp1500000",
                          style: TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0),
                        ),
                        Text(
                            "Menajadi Rp0"
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 65),
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            margin: EdgeInsets.only(left: 5),
                            width: 80,
                            child: Text(
                              'Buy',
                              style: TextStyle(color: ColorPalette.primaryColor),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onTap: () {
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          size: 22,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
        ],
      ),
    );
  }
}
