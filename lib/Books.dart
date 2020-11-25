import 'package:flutter/material.dart';

class Book {
  final String image, title, description, author;
  final int id;
  final double price, rating;

  Book(
      {this.id,
      this.image,
      this.title,
      this.description,
      this.author,
      this.price,
      this.rating});
}

List<Book> books = [
  Book(
      id: 0,
      image: "assets/images/midsun.jpg",
      title: "Midnight Sun",
      description:
          "When Edward Cullen and Bella Swan met in Twilight, an iconic love story was born. But until now, fans have heard only Bella's side of the story. At last...",
      author: "Stephenie Meyer",
      price: 14.99,
      rating: 4.5),
  Book(
      id: 1,
      image: "assets/images/novel.jpg",
      title: "A Time for Mercy",
      author: "Jake Brigance",
      description:
          "Clanton, Mississippi. 1990. Jake Brigance finds himself embroiled in a deeply divisive trial when the court appoints him attorney for Drew...",
      price: 17.99,
      rating: 4.3),
  Book(
      id: 2,
      image: "assets/images/barack.jpg",
      title: "A Promised Land",
      description:
          "In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young...",
      author: "Barack Obama",
      price: 17.99,
      rating: 4.5),
  Book(
      id: 3,
      image: "assets/images/obama.jpg",
      title: "Becoming",
      description:
          "In a life filled with meaning and accomplishment, Michelle Obama has emerged as one of the most iconic and compelling women of our era...",
      author: "Michelle Obama",
      price: 14.99,
      rating: 4.5),
  Book(
      id: 4,
      image: "assets/images/grinch.jpg",
      title: "Grinch",
      description:
          "Grow your heart three sizes and get in on all of the Grinch-mas cheer with this Christmas classic--the ultimate Dr. Seuss holiday book that no collection...",
      author: "Dr. Seuss",
      price: 8.71,
      rating: 4.6),
  Book(
      id: 5,
      image: "assets/images/food.jpg",
      title: "Modern Food",
      description:
          "In Modern Comfort Food, Ina Garten shares 85 new recipes that will feed your deepest cravings. Many of these dishes are inspired by childhood...",
      author: "Ina Garten",
      price: 20.39,
      rating: 4.5)
];
