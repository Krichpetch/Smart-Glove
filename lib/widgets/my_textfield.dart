import 'package:flutter/material.dart';
import 'package:smart_glove/constant/my_constant.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final bool obscureText;
  final String hintText;
  
  const MyTextfield({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
    });

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 58,
              decoration: BoxDecoration(
                color: MyConstant.light,
                borderRadius: BorderRadius.circular(50),
                boxShadow:  [
                  BoxShadow(
                  color: Color.fromARGB(96, 56, 56, 56),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                  ),
                ],
              ),
          
           
              child: TextField( 
                
                controller: controller,
                obscureText: obscureText,
                autocorrect: false,
                enableSuggestions: false,
              
                decoration: 
                  
                  InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyConstant.light),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyConstant.active, width: 5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: hintText,
                    
                  ),
                  
              ),
            );
              
  }
}