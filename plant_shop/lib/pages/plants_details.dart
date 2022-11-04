import 'package:flutter/material.dart';
import 'package:plant_shop/lists/item.dart';
import 'package:plant_shop/lists/item.dart';
import 'package:plant_shop/lists/list.dart';
import 'package:provider/provider.dart';

import '../lists/item.dart';
class PlantsDetails extends StatefulWidget {
  const PlantsDetails({Key? key, required this.cart2}) : super(key: key);
  final item cart2;

  @override
  State<PlantsDetails> createState() => _PlantsDetailsState();
}

class _PlantsDetailsState extends State<PlantsDetails> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(

      body:  Center(
          //هيج تسحبون المعلومات من الصفحه الي قبلها
          child:Text(widget.cart2.Name,
        style:const TextStyle(color: Colors.black,fontSize: 50),)





                )



    );
  }
}
