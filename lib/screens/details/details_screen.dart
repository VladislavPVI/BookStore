import 'package:book_app/Books.dart';
import 'package:book_app/screens/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Book book;

  const DetailsScreen({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple[50],
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.bookmark_border_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ]),
      body: Body(book: book),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {},
          color: Colors.deepPurple[800],
          textColor: Colors.white,
          child: Container(
            child: Text('Buy Now For \$' + book.price.toString(),
                style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
