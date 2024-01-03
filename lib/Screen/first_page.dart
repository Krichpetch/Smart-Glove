import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smart_glove/Constant/my_constant.dart';


import 'package:smart_glove/Screen/translate.dart';
import 'package:smart_glove/Screen/lesson.dart';
import 'package:smart_glove/Screen/add_words.dart';
import 'package:smart_glove/Screen/devices.dart';
import 'package:smart_glove/Screen/settings.dart';


class Firstpage extends StatefulWidget {
  Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
//this keeps track of the index
  int _selectedIndex =2;

//this method updates the current index
void _navigateBottomBar(int index){
  setState(() {
    _selectedIndex =index;
  });
}

  final List _pages = [
    //lessons,
    const Lessons(),
    //add words
    const Addwords(),
    //translate
    const Translate(),
    //devices
    const Devices(),
    //settings
    const Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
 //Navbar
      body: _pages[_selectedIndex],

      bottomNavigationBar: CurvedNavigationBar(
           index: _selectedIndex,
           backgroundColor: MyConstant.light,
           color: MyConstant.lightyellow,
           animationDuration: const Duration(milliseconds: 300),
           height: 75,
           onTap: _navigateBottomBar,
            items: [
             //Lessons
           SizedBox(
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(5.0),
                    child: Image.asset('assets/icons/book.png')
                    
                ),
                
              ),
              
            //Add Words
           SizedBox(
              child: Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(4.0),
                child: Image.asset('assets/icons/add.png')
              )
            ),
            //Translation
            SizedBox(
              child: Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(3.0),
                child: Image.asset('assets/icons/gloves.png')
              )
            ),
            //Devices
            SizedBox(
              child: Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(4.0),
                child: Image.asset('assets/icons/robotic-hand.png')
              )
            ),
            //Settings
           SizedBox(
              child: Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(4.5),
                child: Image.asset('assets/icons/setting.png')
              )
            ),
          ],
          ),
    );
  }
}