import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animate_do/animate_do.dart';


import 'package:smart_glove/constant/my_constant.dart';
import 'package:smart_glove/screen/sign_in.dart';
import 'package:smart_glove/Screen/first_page.dart';

//import 'package:smart_glove/screen/main_page.dart';


class PreSignin extends StatefulWidget {
  const PreSignin({super.key});

  @override
  State<PreSignin> createState() => _PreSigninState();
}

class _PreSigninState extends State<PreSignin> {
  final myitems = [
    Image.asset('assets/images/communicate.png'),
    Image.asset('assets/images/communicate.png'),
    Image.asset('assets/images/communicate.png'),
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              backgroundColor: MyConstant.light,
              body: SafeArea (
                      child: Center(
                        child: Column(
                          children: [
                            FadeInUp(
                              duration: Duration(milliseconds: 1500),
                              
                              child: Container(
                                child: Stack(
                                  fit: StackFit.loose,
                                  clipBehavior: Clip.none,
                                  children:<Widget> [
                                    SizedBox(
                                      child: CarouselSlider(
                                        options: CarouselOptions(
                                          autoPlay: true,
                                          height: 530,
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                                          autoPlayInterval: const Duration(seconds: 5) ,
                                          enlargeCenterPage: true,
                                          aspectRatio: 2.0,
                                          onPageChanged: (index, reason){
                                            setState(() {
                                              myCurrentIndex = index;
                                              });
                                          },
                                        ),
                                          items: myitems,
                                      ),
                                    ),
                               
                                    Positioned(
                                        bottom: -230,
                                        child: Hero(
                                          tag: 'layerone',
                                          child: Container(
                                            width: 395,
                                            height: 274,
                                            decoration: BoxDecoration(
                                              color: MyConstant.secondary,
                                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)), 
                                            ), 
                                          ),
                                        ),
                                    ),
                                
                                    Positioned(
                                      bottom: -240,
                                      child: Hero(
                                        tag: 'layertwo',
                                        child: Container(
                                          width: 395,
                                          height: 257,
                                          decoration: BoxDecoration(
                                            color: MyConstant.primary,
                                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)), 
                                          ), 
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    FadeInUp(
                                      duration:  const Duration(microseconds: 1000),
                                      delay:  const Duration(milliseconds: 500),
                                      child:  const Text("LOGIN TO GET THE FULL EXPERIENCE!",
                                        style: TextStyle(
                                          color: Colors.white, 
                                          fontWeight: FontWeight.w600, 
                                          fontSize:18,
                                          letterSpacing: 4.5,
                                        ),
                                      ),
                                    ),
                                    
                                    SizedBox(height: 20),
                                  
                                    FadeInUp(
                                      duration: Duration(milliseconds: 1000),
                                      delay: Duration(milliseconds: 500),
                                      child: SizedBox(
                                        child: ElevatedButton(
                                          onPressed: (){
                                           Navigator.push(context, MaterialPageRoute(builder: (context) => SigninScreen()));
                                          }, 
                                          child: Text('SIGN IN',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                              letterSpacing: 4.2,
                                              color: MyConstant.dark,
                                              ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(5),
                                            fixedSize: Size(280, 56),
                                            backgroundColor: MyConstant.light,
                                            foregroundColor: MyConstant.third,
                                            shadowColor: Color.fromARGB(255, 120, 120, 120),
                                            elevation: 5,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(50)),
                                            ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 20,
                                    ),

                                    FadeInUp(
                                      duration: Duration(milliseconds: 1000),
                                      delay: Duration(milliseconds: 500),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(color: MyConstant.third, width: 5),
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),

                                    FadeInUp(
                                      duration: Duration(milliseconds: 1000),
                                      delay: Duration(milliseconds: 500),
                                      child: TextButton(
                                        onPressed: (){}, 
                                        child: Text('CREATE AN ACCOUNT',
                                          style: TextStyle(
                                          color: MyConstant.light,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          letterSpacing: 3.5,
                                          decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
          );
     
  }
}