import 'package:flutter/material.dart';
import 'package:plant_shop/pages/signUp_page.dart';
import 'package:plant_shop/pages/sing_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  void toggleScreens (){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
   if(showLoginPage){
     return sign_page(showRegisterPage: toggleScreens);
   }  else {
     return signUp_page(showSignInPage:  toggleScreens);
   }
   }

}
