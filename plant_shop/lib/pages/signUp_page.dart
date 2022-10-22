import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
import 'package:plant_shop/widgets/orginalButton.dart';
import 'package:plant_shop/widgets/textform.dart';

class signUp_page extends StatelessWidget {
  const signUp_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backroundimage), fit: BoxFit.fill),
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 1),
            child: Column(
              children: [
                //welcome text
                const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('Welcome !',
                      style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),)),

                //user name
                const SizedBox(height: 50),
                 textform(myicon:const Icon(Icons.person_outline_rounded, color:kPrimaryColor ),
                    hinttext: 'myusername'),

                //email
                const SizedBox(height: 10),
                textform(myicon:const Icon(Icons.email_outlined, color:kPrimaryColor),
                    hinttext: 'yourmail@gmail.com'),

                //password
                const SizedBox(height: 10),
                textform(myicon:const Icon(Icons.key_outlined, color:kPrimaryColor),
                    hinttext: '******'),

                const SizedBox(height: 40),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 21),
                  height: 40,
                  width: double.infinity,
                  child: orginalButton(text: 'Sing Up'),),

                const SizedBox(height: 10),
                  Container(
                  height: 300,width: 250,
                  child:const Image(image: AssetImage('assest/images/logo.png')),
                ),

                const  SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'I\'m already a member,',
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context)=>const signUp_page()));
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
