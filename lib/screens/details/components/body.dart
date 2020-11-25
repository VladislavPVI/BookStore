import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../Books.dart';

class Body extends StatelessWidget {
  final Book book;

  const Body({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.purple[50],
            height: size.height * 0.5,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(book.image),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: book.title + "\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: book.author,
                            style: TextStyle(color: Colors.grey, fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBarIndicator(
                        rating: book.rating,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.deepPurple[800],
                        ),
                        itemCount: 5,
                        itemSize: 25,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: " " + book.rating.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: " / 5.0",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Description\n\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: book.description,
                            style: TextStyle(color: Colors.grey, fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 165,
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: OutlineButton(
                            child: Row(
                              children: [
                                Icon(Icons.format_align_left),
                                Text(
                                  "  Preview",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            onPressed: () {}),
                      ),
                      ButtonTheme(
                          minWidth: 165,
                          height: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: OutlineButton(
                              child: Row(
                                children: [
                                  Icon(Icons.messenger_outline),
                                  Text(
                                    "  Reviews",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              onPressed: () {}))
                    ],
                  ),
                ),
              ],
            ),
          )
          //ProductTitleWithImage(product: product)
        ],
      ),
    );
  }
}
