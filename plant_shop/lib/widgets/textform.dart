import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
class textform extends StatelessWidget {
   textform({ required this.myicon,required this.hinttext, this.Controller });

  Icon myicon ;
  String hinttext;
  final Controller ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          controller: Controller,
          decoration:   InputDecoration(
            prefixIcon: myicon,
            hintText:hinttext,
            border: InputBorder.none

          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }
}
