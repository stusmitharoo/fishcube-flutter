import 'package:flutter/material.dart';

import './waters/waters.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            padding: EdgeInsets.all(10.0),
            icon: new Image.asset('assets/logo.jpg', fit: BoxFit.cover),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          );
        }),
        title: new Text('Search waters'),
      ),
      body: GridView.count(
        primary: false,
        padding: EdgeInsets.only(top: 40.0),
        crossAxisSpacing: 0.0,
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        children: <Widget>[
          new IconButton(
            icon: new Image.asset(
              'assets/stillwater.jpg',
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Waters(new WaterId('1'))));
            },
          ),
          new IconButton(
            icon: new Image.asset(
              'assets/stillwaterLure.jpg',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/waters');
            },
          ),
          new IconButton(
            icon: new Image.asset(
              'assets/river.jpg',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/waters');
            },
          ),
          new IconButton(
            icon: new Image.asset(
              'assets/canal.jpg',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/waters');
            },
          ),
          new IconButton(
            icon: new Image.asset(
              'assets/world.jpg',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/waters');
            },
          ),
          new IconButton(
            icon: new Image.asset(
              'assets/riverLure.jpg',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/waters');
            },
          ),
          new IconButton(
            icon: new Image.asset(
              'assets/canalLure.jpg',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/waters');
            },
          ),
          new IconButton(
            icon: new Image.asset(
              'assets/seaBoat.jpg',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/waters');
            },
          ),
          new IconButton(
            icon: new Image.asset(
              'assets/seaShore.jpg',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/waters');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.person_add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
