import 'package:flutter/material.dart';
import 'package:plant_shop/pages/plants_details.dart';
import 'item.dart';
import 'package:provider/provider.dart';
class plant_list  with ChangeNotifier{
  List<item> items = [];
  String nor = 'noor' ;

@override
   notifyListeners();
}


class cartPlant extends StatelessWidget {
  const cartPlant({Key? key,  required this.cart2}) : super(key: key);
  final item cart2;

  @override
  Widget build(BuildContext context) {
    int indx =0;
    count(){

     return indx++;
    }
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 203, 200, 200)),
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 3, top: 5),
                    child: Consumer<plant_list>(builder: (context ,plant,child){
                      return  Text(cart2.price,
                          style: const TextStyle(fontWeight: FontWeight.bold));
                    }
                    )),
                Container(
                    padding: EdgeInsets.only(top: 25),
                    child: Image(
                      image: AssetImage(cart2.img),
                      height: 150,
                    )),
                Text(cart2.Name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Text('Add to cart',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(Icons.favorite_outline_sharp,
                          size: 20, color: Colors.white),
                    )
                  ]),
                ),
              ],
            ),
          )),

    );
  }
}

