import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
class textform extends StatelessWidget {
   textform({ required this.myicon,required this.hinttext });

  Icon myicon ;
  String hinttext;
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
          decoration:   InputDecoration(
            prefixIcon: myicon,
            hintText:hinttext,
            border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),

          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }
}
