import 'package:book_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:book_app/Books.dart';

class PopularBooks extends StatelessWidget {
  const PopularBooks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          PopularBookCard(
            book: books[3],
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(book: books[3]),
                ),
              );
            },
          ),
          PopularBookCard(
            book: books[4],
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(book: books[4]),
                ),
              );
            },
          ),
          PopularBookCard(
            book: books[5],
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(book: books[5]),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class PopularBookCard extends StatelessWidget {
  const PopularBookCard({
    Key key,
    this.book,
    this.press,
  }) : super(key: key);

  final Book book;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(book.image),
                height: 220,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: book.title + "\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: book.author,
                            style: TextStyle(color: Colors.grey, fontSize: 13)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
