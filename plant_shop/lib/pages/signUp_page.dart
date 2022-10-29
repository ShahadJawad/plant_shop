import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
import 'package:plant_shop/pages/sing_page.dart';
import 'package:plant_shop/widgets/orginalButton.dart';
import 'package:plant_shop/widgets/textform.dart';

class signUp_page extends StatefulWidget {
  final VoidCallback showSignInPage;
  const signUp_page({Key? key, required this.showSignInPage}) : super(key: key);

  @override
  State<signUp_page> createState() => _signUp_pageState();
}

class _signUp_pageState extends State<signUp_page> {
  final _emailController = TextEditingController();
  final _passwordController =TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());

  }

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
                    hinttext: 'yourmail@gmail.com',
                    Controller: _emailController,
                ),

                //password
                const SizedBox(height: 10),
                textform(myicon:const Icon(Icons.key_outlined, color:kPrimaryColor),
                    hinttext: '******',
                Controller: _passwordController,
                ),

                //Sing Up
                const SizedBox(height: 50),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 21),
                  height: 40,
                  width: double.infinity,
                  child: orginalButton(text: 'Sing Up', onPressed: signUp),),


                const SizedBox(height: 50),

                Container(
                  height: 300,width: 250,
                  child:const Image(image: AssetImage('assest/images/logo.png')),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'I\'m already a member,',
                    ),
                    TextButton(
                      onPressed: widget.showSignInPage,
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
