import 'package:flutter/material.dart';

class WaterId {
  final String id;

  WaterId(this.id);
}

class Waters extends StatelessWidget {
  Waters(this.waterId);
  final WaterId waterId;

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
        title: new Text('Select a water'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(30.0),
        child: new Center(
            child: new Column(
          children: <Widget>[
            new Text('This is the waters page \nname: ${waterId.id}')
          ],
        )),
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.teal,
            primaryColor: Colors.orange,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.black))),
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text("profile"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person_add),
              title: new Text("login"),
            )
          ],
        ),
      ),
    );
  }
}
