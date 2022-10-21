import 'package:flutter/material.dart';
import 'package:plant_shop/pages/sing_page.dart';
import 'package:plant_shop/sign_page.dart';

void main() => runApp(
 MaterialApp(
  home: sing_page(),
));


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sing_page(),
    );
  }
}
