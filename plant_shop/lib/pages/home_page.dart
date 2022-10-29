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
                height: MediaQuery.of(context).size.width / 10,
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
              SizedBox(
                height: 9,
              ),
              Expanded(
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding:EdgeInsets.all(0.8) ,
                      child: Container(
                        height: 120,
                        width: 230,
                        padding: EdgeInsets.all(.8),
                        decoration: BoxDecoration(
                          image:const DecorationImage(
                            image:  AssetImage(
                          'assest/images/plant3.png'
                          ),
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(255, 203, 200, 200)
                        ),
                        child: Column(
                          children: [
                           const SizedBox(
                              width: 22,
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                            children:const [
                              Text(
                        '35',
                        style: TextStyle(
                         // color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                              ),
                            ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 1.2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[  
                            Container(
                              height: 32,
                              width: 130,
                        padding: EdgeInsets.all(.8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 250, 250),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:    TextButton(
                      onPressed: (){} ,
                      child: const Text(
                        'Add to Cat',
                        style: TextStyle(
                         // color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                                ),
                            ),
                            ),
                            Container(
                              height: 37,
                              width: 40,
                        padding: EdgeInsets.all(0.8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 250, 250),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child:   IconButton(
                      onPressed: (){},
                     icon:Icon( Icons.favorite_border)
                    ),
                    ),
                            )
                          ],
                            ),
                          ],
                          ),
                      ),
                      ),
                      Padding(
                      padding:EdgeInsets.all(0.8) ,
                      child: Container(
                        height: 120,
                        width: 230,
                        padding: EdgeInsets.all(.8),
                        decoration: BoxDecoration(
                          image:const DecorationImage(
                            image:  AssetImage(
                          'assest/images/plant4.png'
                          ),
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(255, 203, 200, 200)
                        ),
                        child: Column(
                          children: [
                          const  SizedBox(
                              width: 22,
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                            children:const [
                              Text(
                        '39',
                        style: TextStyle(
                         // color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                              ),
                            ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 1.2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[  
                            Container(
                              height: 32,
                              width: 130,
                        padding: EdgeInsets.all(.8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 250, 250),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:    TextButton(
                      onPressed: (){} ,
                      child: const Text(
                        'Add to Cat',
                        style: TextStyle(
                         // color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                                ),
                            ),
                            ),
                            Container(
                              height: 37,
                              width: 40,
                        padding: EdgeInsets.all(0.8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 250, 250),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child:   IconButton(
                      onPressed: (){},
                     icon:Icon( Icons.favorite_border)
                    ),
                    ),
                            )
                          ],
                            ),
                          ],
                          ),
                      ),
                      ),
                      Padding(
                      padding:EdgeInsets.all(2) ,
                      child: Container(
                        height: 120,
                        width: 230,
                        padding: EdgeInsets.all(.8),
                        decoration: BoxDecoration(
                          image:const DecorationImage(
                            image:  AssetImage(
                          'assest/images/plant2.png'
                          ),
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(255, 203, 200, 200)
                        ),
                        child: Column(
                          children: [
                          const    SizedBox(
                              width: 22,
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                        '49',
                        style: TextStyle(
                         // color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                              ),
                            ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 1.2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[  
                            Container(
                              height: 32,
                              width: 130,
                        padding: EdgeInsets.all(.8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 250, 250),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:    TextButton(
                      onPressed: (){} ,
                      child: const Text(
                        'Add to Cat',
                        style: TextStyle(
                         // color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                                ),
                            ),
                            ),
                            Container(
                              height: 37,
                              width: 40,
                        padding: EdgeInsets.all(0.8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 250, 250),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child:   IconButton(
                      onPressed: (){},
                     icon:Icon( Icons.favorite_border)
                    ),
                    ),
                            )
                          ],
                            ),
                          ],
                          ),
                      ),
                      ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
