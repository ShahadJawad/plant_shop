import 'package:flutter/material.dart';
import 'package:plant_shop/sign_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sign_page(),
    );
  }
}
