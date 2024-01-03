import 'package:flutter/material.dart';
import 'package:smart_glove/Constant/my_constant.dart';

class Addwords extends StatelessWidget {
  const Addwords({super.key});


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text('Add Words', 
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
          "Add words"
  
      )
      )
    );
  }
}

