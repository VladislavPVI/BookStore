import 'package:flutter/material.dart';
import 'package:book_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ]),
      body: Body(),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.home),
                    color: Colors.deepPurple[800],
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.bookmark),
                    color: Colors.deepPurple[800],
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.deepPurple[800],
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.settings),
                    color: Colors.deepPurple[800],
                    onPressed: () {}),
              ],
            ),
          )),
    );
  }
}
