import 'dart:developer';
import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/widgets/orginalButton.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  //final user =FirebaseAuth.instance.currentUser!;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width / 4,
                ),
                firstCart(context),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 9,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'New Plants',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 25, color: Colors.black),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_sharp,
                  size: 25, color: Colors.black),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner_outlined, size: 25),
              activeIcon: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 144, 205, 141),
                  radius: 20,
                  child: Icon(Icons.qr_code_scanner_outlined,
                      color: Colors.black, size: 25)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined,
                  size: 22, color: Colors.black),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded,
                  size: 25, color: Colors.black),
              label: '',
            ),
          ],

          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          // unselectedFontSize: 0,
          unselectedItemColor: Colors.black12,
        ));
  }
}

firstCart(context) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(top: 50),
        height: 110.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 144, 205, 141),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
            child: Column(
              children: const [
                Text(
                  '30% OFF',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '02-23 July',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.8,
          ),
          Container(
            height: 150,
            child: const Image(
              image: AssetImage(
                'assest/images/plant1.png',
              ),
            ),
          )
        ],
      ),
    ],
  );
}
