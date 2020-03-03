import 'dart:ui';

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  static const routeName ="post";
  final urlImage;
  final urlProfile = 'http://code.byriza.com/lib/blog/flutter222.png';

  Post(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          title: Text('Posts', style: TextStyle(color: Colors.white),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                    ),
                    Container(
                      height: 300,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 300,
                            child: Hero(
                              tag: urlImage,
                              child: Container(
                                width: double.infinity,
                                height: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(urlImage),
                                      fit: BoxFit.fill
                                  ),
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX:20.0,sigmaY: 20.0 ),
                                  child: Container(
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child:
                              new Container(
                                padding: EdgeInsets.only(top: 30,),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.network(urlImage,fit: BoxFit.fill,
                                    width: 170.00,
                                    height: 140.00,
                                  ),
                                ),
                              ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 0.0),
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 0, left: 900),
                                  ),
                                  SizedBox(
                                    height: 100.0,
                                    child: Text(
                                      "Judul \nCourses",
                                      style: TextStyle(
                                          fontSize: 35.0,fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    new Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                        )
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 0),),
                    Align(
                      alignment: Alignment.center,
                      child: Text("Harga",style: TextStyle(fontSize: 20, color: Colors.black),
                        textAlign: TextAlign.justify,),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text("Harga Diskon",style: TextStyle(fontSize: 20, color: Colors.black),
                        textAlign: TextAlign.justify,),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15),),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 200.00,
                        height: 49.00,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(offset: Offset(0.00,3.00))
                          ],
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color(0xfff62626),
                        ),
                        padding: EdgeInsets.only(top: 5),
                        child: Text
                          ("Buy Now",textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25,color: Colors.white),),
                      ),
                    ),
                    Padding(padding:
                    EdgeInsets.only(top: 15),),
                    new Container(
                        height:320.00 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          border: Border.all(width: 1.00, color: Color(0xff707070),),
                          borderRadius: BorderRadius.circular(17.00),
                        ),
                        child: Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(left: 20),),
                                    Text("Deskripsi",style: TextStyle(fontSize: 25,
                                        fontWeight: FontWeight.bold,color: Colors.black
                                    ),),
                                    Padding(padding: EdgeInsets.only(left: 170),),
                                    Text("Lihat Semua",
                                      style: TextStyle(fontFamily: "Microsoft YaHei",
                                          fontWeight:FontWeight.w300,
                                          fontSize: 15),
                                    ),
                                    Icon(Icons.navigate_next)
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(left: 50.0),),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30),
                                        ),
                                        SizedBox(height: 50.0,width:250,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                    ),
                    new Container(
                      height: 230,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(width: 1.00, color: Color(0xff707070),),
                        borderRadius: BorderRadius.circular(17.00),
                      ),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                  ),
                                  Text("Di Buat Oleh",style: TextStyle(fontSize: 25,
                                      fontWeight: FontWeight.bold,color: Colors.black),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30.0),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.0),
                                  ),
                                  new Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100.0),
                                      child: Image.network(urlProfile,fit: BoxFit.cover,
                                        width: 120.00,
                                        height: 120.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.00),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.supervised_user_circle,size: 40,),
                                          Text("1,456,789",style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20
                                          ),),
                                          Text(" Student",style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 20
                                          ),)
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.star_border,size: 40,),
                                          Text("4.7",style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20
                                          ),),
                                          Text(" rating",style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                          ),)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 60.00,top: 40),),
                              Text("Nama",
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.00),
                    ),
                    Container(
                      height: 600,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(width: 1.00, color: Color(0xff707070),),
                        borderRadius: BorderRadius.circular(17.00),
                      ),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(left: 20),),
                                  Text("Feedback",style: TextStyle(fontSize: 25,
                                      fontWeight: FontWeight.bold,color: Colors.black),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                    ),
                    new Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.black),
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 40.0),),
                              Column(
                                children: <Widget>[
                                  Text("Harga",style: TextStyle(fontFamily: "Microsoft YaHei",
                                      fontSize: 22,
                                      color:Colors.black,fontWeight: FontWeight.w700),),
                                  Text("Harga Diskon",style: TextStyle(fontFamily: "Microsoft YaHei",
                                      fontSize: 15,
                                      color: Colors.black,fontWeight: FontWeight.w300),)
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 110.0),
                              ),
                              new Container(
                                height: 35.00,
                                width: 150.00,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xfff62626),
                                  borderRadius: BorderRadius.circular(8.00),
                                ),
                                child: Text(
                                  "Buy Now",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Microsoft YaHei",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
