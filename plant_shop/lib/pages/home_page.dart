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
              Stack(
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
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
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
              ),
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
    );
  }
}
