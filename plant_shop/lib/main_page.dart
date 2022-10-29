import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/auth/AuthPage.dart';
import 'package:plant_shop/pages/home_page.dart';
import 'package:plant_shop/pages/signUp_page.dart';
import 'package:plant_shop/pages/sing_page.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context,snapshot){
      if(snapshot.hasData){
        return home_page();
      }
      else{
        return const AuthPage();
      }
    }
    );
  }
}
