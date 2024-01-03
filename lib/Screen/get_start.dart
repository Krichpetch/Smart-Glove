import 'package:flutter/material.dart';
import 'package:smart_glove/constant/my_constant.dart';
import 'package:smart_glove/screen/pre_sign_in.dart';


class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              backgroundColor: MyConstant.secondary,
              body: SafeArea(
                
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Image(
                          image: AssetImage('assets/images/smile.png'),
                        ),
                
                        Text(" LET’S COMMUNICATE WITH SIGN LANGUAGE",
                          style: TextStyle(
                            
                            color: MyConstant.dark,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            letterSpacing: 4,
                            height: 3,
                            
                          ),
                        ),
                       
                        SizedBox(height: 90,),
                       

                        SizedBox(
                                      
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PreSignin()));
                            }, 
                            child: Text('GET START',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              letterSpacing: 4.2,
                               color: MyConstant.light,
                            ),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(5),
                              fixedSize: Size(280, 56),
                              backgroundColor: MyConstant.primary,
                              foregroundColor: MyConstant.active,
                              shadowColor: MyConstant.primary,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
    );
  }
}