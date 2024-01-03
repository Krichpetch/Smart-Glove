import 'package:flutter/material.dart';
import 'package:smart_glove/Constant/my_constant.dart';

class Lessons extends StatelessWidget {
  const Lessons({super.key});



   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text('Lessons', 
        style: TextStyle(
          color: MyConstant.dark,
          fontSize: 26,
          fontWeight: FontWeight.bold,
          )
        ),
        automaticallyImplyLeading: false,
        backgroundColor: MyConstant.light,
        elevation: 0.0,
      ),



      body: Center(
        child: Text(
          "Lessons"
  
      )
      )
    );
  }
}

