import 'package:flutter/material.dart';
import 'package:smart_glove/Constant/my_constant.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


import 'package:smart_glove/Screen/translate.dart';
import 'package:smart_glove/Screen/translate_2.dart';
import 'package:smart_glove/Screen/first_page.dart';
import 'package:smart_glove/Screen/lesson.dart';
import 'package:smart_glove/Screen/add_words.dart';
import 'package:smart_glove/Screen/devices.dart';
import 'package:smart_glove/Screen/settings.dart';
import 'package:smart_glove/screen/get_start.dart';
import 'package:smart_glove/screen/pre_sign_in.dart';
import 'package:smart_glove/screen/sign_in.dart';
import 'package:smart_glove/screen/main_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

//Every pages in flutter have 2 states: Stateless widget and Stateful Widget.
// Setting the state

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State <MyApp> createState() =>  _MyAppState();
}

class _MyAppState extends State <MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: MyConstant.light,
        primaryColor: MyConstant.primary,
        fontFamily: 'Poppins'
      ),
      home: GetStart(),
      routes: {
        '/get_start':(context) => const GetStart(),
        '/pre_sign_in':(context) => const PreSignin(),
        '/sign_in':(context) => const SigninScreen(),
        '/translate':(context) => const Translate(),
        '/translate2':(context) => const Translate2(),
        '/firstpage':(context) => Firstpage(),
        '/lessons':(context) => const Lessons(),
        '/add_words':(context) => const Addwords(),
        '/devices':(context) => const Devices(),
        '/settings':(context) => const Settings(),
        '/main_page':(context) => const Mainpage(),
        
      }
    );
  }
}