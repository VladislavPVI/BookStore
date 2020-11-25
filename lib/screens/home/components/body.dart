import 'package:flutter/material.dart';
import 'package:book_app/screens/home/components/bestsellers_books.dart';
import 'package:book_app/screens/home/components/popular_books.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "Popular Now",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          PopularBooks(),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "Bestsellers",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          BestsellersBooks()
        ],
      ),
    );
  }
}
