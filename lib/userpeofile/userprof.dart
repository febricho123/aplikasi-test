import 'package:flutter/material.dart';
import 'package:flutter_app/pengaturan/app.dart';

class Home extends StatefulWidget {
  static const routeName = "home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.lightBlueAccent
                  ]
                )
              ),
            ),
           Padding(
             padding: EdgeInsets.only(top: 64.0),
             child: Column(
               children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Container(
                       width: 150,
                       height: 150,
                       decoration: BoxDecoration(
                         shape:BoxShape.circle,
                         border: Border.all(color: Colors.white,width: 2.0),
                       ),
                       padding: EdgeInsets.all(8.0),
                       child: CircleAvatar(
                         backgroundColor: Colors.red,
                       ),
                     )
                   ],
                 ),
                 SizedBox(height: 8.0),
                 Text(
                   "Nama",
                   style:
                   TextStyle(fontWeight: FontWeight.bold,
                   fontSize: 21.0,
                   color: Colors.white),
                 ),
                 Text(
                   "Member Since",
                   style:
                   TextStyle(fontWeight: FontWeight.bold,
                       fontSize: 21.0,
                       color: Colors.white),
                 ),
               ],
             )
           ),
            Align(
              alignment: Alignment(1.3, -1.1),
              child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    color: Colors.white30,
                  ),
                  padding: EdgeInsets.all(8.0),
                  child:GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, App.routeName);
                    },
                    child: Icon(Icons.settings,color: Colors.white,size: 30,),
                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 270),
              decoration: BoxDecoration(
                  color: Colors.white70,
              ),
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: GridView.builder(
                    itemCount: 4,
                    itemBuilder: (context,index) => Card(
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        color: Colors.white,
                      ),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}