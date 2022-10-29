import 'package:flutter/material.dart';

class plant_list {
  final String img, Name, id, price;
  plant_list(
      {required this.Name,
      required this.id,
      required this.img,
      required this.price});
}

List<plant_list> cart_lists = [
  plant_list(
      id: 'c1',
      img: 'assest/images/plant2.png',
      Name: 'Monstera',
      price: '\$39'),
  plant_list(
      id: 'c2',
      img: 'assest/images/plant3.png',
      Name: 'Ageratum',
      price: '\$18'),
  plant_list(
      id: 'c3', img: 'assest/images/plant4.png', Name: 'gester', price: '\$40'),
];

class cartPlant extends StatelessWidget {
  const cartPlant({Key? key, required this.cart2}) : super(key: key);
  final plant_list cart2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40),
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
                    child: Text(cart2.price,
                        style: const TextStyle(fontWeight: FontWeight.bold))),
                Container(
                    padding: EdgeInsets.only(top: 25),
                    child: Image(
                      image: AssetImage(cart2.img),
                      height: 200,
                    )),
                Text(cart2.Name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
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
