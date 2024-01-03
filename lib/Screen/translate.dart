import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_glove/Constant/my_constant.dart';

class Translate extends StatelessWidget {
  const Translate({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text('TRANSLATE', 
        style: TextStyle(
          color: MyConstant.dark,
          fontSize: 26,
          fontWeight: FontWeight.bold,
          )
        ),
        automaticallyImplyLeading: false,
        backgroundColor: MyConstant.light,
        elevation: 0.0,
        actions: [
          GestureDetector(
          onTap: () {},
            child: Container
            (
            margin: const EdgeInsets.all(12),
            width: 30,
            decoration: BoxDecoration
              (
              color: MyConstant.light,
              borderRadius: BorderRadius.circular(10),
              ),
            child: SvgPicture.asset('assets/icons/home_icon.svg'),
            ),
          ),
        ]
      ),

    // //Navbar
    //   bottomNavigationBar: CurvedNavigationBar(
    //        backgroundColor: MyConstant.light,
    //        color: MyConstant.lightyellow,
    //        animationDuration: const Duration(milliseconds: 300),
    //        height: 70,
    //       onTap: (index) {
    //         print(index);
    //       },
    //         items: [
    //          //Lessons
    //        SizedBox(
    //             child: Container(
    //               height: 40,
    //               width: 40,
    //               padding: const EdgeInsets.all(5.0),
    //                 child: Image.asset('assets/icons/book.png')
                    
    //             ),
                
    //           ),
              
    //         //Add Words
    //        SizedBox(
    //           child: Container(
    //             height: 40,
    //             width: 40,
    //             padding: const EdgeInsets.all(4.0),
    //             child: Image.asset('assets/icons/add.png')
    //           )
    //         ),
    //         //Translation
    //         SizedBox(
    //           child: Container(
    //             height: 40,
    //             width: 40,
    //             padding: const EdgeInsets.all(3.0),
    //             child: Image.asset('assets/icons/gloves.png')
    //           )
    //         ),
    //         //Devices
    //         SizedBox(
    //           child: Container(
    //             height: 40,
    //             width: 40,
    //             padding: const EdgeInsets.all(4.0),
    //             child: Image.asset('assets/icons/robotic-hand.png')
    //           )
    //         ),
    //         //Settings
    //        SizedBox(
    //           child: Container(
    //             height: 40,
    //             width: 40,
    //             padding: const EdgeInsets.all(4.5),
    //             child: Image.asset('assets/icons/setting.png')
    //           )
    //         ),
    //       ],
    //       ),

      body:
      Column(
        children: [
          const SizedBox(height: 92,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( //
                  height: 220,
                  width: 290,
                  decoration: BoxDecoration
                  (
                    color: MyConstant.lightgray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('START...',
                    style: TextStyle(
                      color: MyConstant.dark,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                ),
              ),
            ],
          ),

           const SizedBox(height: 80,), //Speak Button
            SizedBox(
              height: 84,
              width: 84,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/translate2');
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: MyConstant.lightyellow, // <-- Button color
                  foregroundColor: MyConstant.primary, // <-- Splash color
                ),
                child: Image.asset('assets/icons/gloves.png'),
              ),
            )
        ],
      ),
      );
  }
}

