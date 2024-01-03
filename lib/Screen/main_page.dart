import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smart_glove/Screen/first_page.dart';
import 'package:smart_glove/Screen/get_start.dart';
//import 'package:smart_glove/Screen/sign_in.dart';


class Mainpage extends StatelessWidget {
  const Mainpage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context,snapshot){
            if (snapshot.hasData){
              return Firstpage();
              }
              else {
              return GetStart();
              }
            }
        ),
      );
  }
}