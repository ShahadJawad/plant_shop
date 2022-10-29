import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
import 'package:plant_shop/pages/home_page.dart';
import 'package:plant_shop/pages/signUp_page.dart';
import 'package:plant_shop/widgets/orginalButton.dart';
import 'package:plant_shop/widgets/textform.dart';

class sign_page extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const sign_page({Key? key, required this.showRegisterPage}) : super(key: key);

  @override
  State<sign_page> createState() => _sign_pageState();
}

class _sign_pageState extends State<sign_page> {

  final _emailController = TextEditingController();
  final _passwordController =TextEditingController();
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
                //logo image
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                    child: Image(image: AssetImage('assest/images/logo.png'),
                      height: 290,width: 250,)),

                //text
                SizedBox(
                  width: MediaQuery.of(context).size.width/2,
                    child: const Text("No longer to forget watering your plants!",
                    style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 24, 59, 87) ),
                    )),

                SizedBox(height: MediaQuery.of(context).size.height /9 ),

                // Email Text Form
                textform(myicon: const Icon(Icons.email_outlined,size: 28, color:kPrimaryColor  ),
                           hinttext: 'Email',),

               const SizedBox(height: 10),

                //Password Text Form
                textform(myicon: const Icon(Icons.key_outlined,size: 28, color:kPrimaryColor ),
                    hinttext: 'Password'),

                //Forgot Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                  ],),

                //Sing in Button
                 Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: double.infinity,
                  child: orginalButton(text: 'Sing In'),),

                const SizedBox(height: 40.0,),

                // text new user
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'I\'m a new user,',
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context)=> signUp_page()));
                      },
                      child: const Text(
                        'Sign up',
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
      );
    
  }
}
