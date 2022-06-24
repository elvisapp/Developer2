import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "LOGIN EMPRESA (Gratis)",
      price: 260,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "LOGIN PROFESSIONAL",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color.fromARGB(255, 201, 10, 191)),
  Product(
      id: 3,
      title: "LOGIN EMPRESA",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color.fromARGB(255, 7, 88, 163)),
  Product(
      id: 4,
      title: "LOGIN EMPRESA",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color.fromRGBO(251, 254, 255, 1)),
  Product(
      id: 5,
      title: "CONTACT LIST",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color.fromARGB(255, 34, 68, 221)),
  Product(
    id: 6,
    title: "LOGIN ORANGE",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color.fromARGB(255, 199, 64, 75),
  ),
];

String dummyText = "Hola vamos que vamos.";
