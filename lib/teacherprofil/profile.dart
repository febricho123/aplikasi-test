import 'package:flutter/material.dart';

import './post.dart';

class Profile extends StatefulWidget {
  static const routeName = "profile";
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  final urlProfile = 'http://code.byriza.com/lib/blog/flutter222.png';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlueAccent
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileInformation(urlProfile: urlProfile),
            Divider(),
            ListPosts(tabController: _tabController),
          ],
        ),
      ),
    );
  }
}

class ListPosts extends StatelessWidget {
  const ListPosts({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.lightBlue,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.border_all)),
              Tab(icon: Icon(Icons.file_download)),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                GridView.count(
                  physics: ScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
                  children: <String>[
                    'https://upload.wikimedia.org/wikipedia/commons/0/01/LinuxCon_Europe_Linus_Torvalds_03_%28cropped%29.jpg',
                    'https://images-na.ssl-images-amazon.com/images/I/41dKkez-1rL._SX326_BO1,204,203,200_.jpg',
                    'https://upload.wikimedia.org/wikipedia/commons/0/01/Bill_Gates_July_2014.jpg'
                  ].map((String url) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Post(url)));
                      },
                      child: GridTile(
                        child: Hero(tag: url, child: Image.network(url, fit: BoxFit.cover)),
                      ),
                    );
                  }).toList(),
                ),
                Container(
                  height: 100,
                  child: Center(
                    child: Text('coba'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    Key key,
    @required this.urlProfile,
  }) : super(key: key);

  final String urlProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape:BoxShape.circle,
              border: Border.all(color: Colors.white,width: 2.0),
            ),
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("http://code.byriza.com/lib/blog/flutter222.png"),
            ),
          ),
          Align(
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            height: 50,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '14',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                        color: Colors.white),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: <Widget>[
                      Text('131',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white)),
                      Text("Murid", style: TextStyle(color: Colors.white70))
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Colors.yellowAccent,),
                          Text("4.7",style : TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold,
                            color: Colors.white
                          ))
                        ],
                      ),
                      Text("Rating", style: TextStyle(color: Colors.white70))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
