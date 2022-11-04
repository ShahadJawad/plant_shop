import 'package:flutter/material.dart';

class item {
  final String img, Name, id, price;
  item(
      {
        required this.Name,
        required this.id,
        required this.img,
        required this.price});
}


List<item> items = [
  item(
      id: 'c1',
      img: 'assest/images/plant2.png',
      Name: 'Monstera',
      price: '\$39'),
  item(
      id: 'c2',
      img: 'assest/images/plant3.png',
      Name: 'Ageratum',
      price: '\$18'),
  item(
      id: 'c3',
      img: 'assest/images/plant4.png',
      Name: 'gester',
      price: '\$40'),
];











