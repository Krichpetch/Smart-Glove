import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:smart_glove/Screen/first_page.dart';

import 'package:smart_glove/constant/my_constant.dart';
import 'package:smart_glove/widgets/my_textfield.dart';

import 'package:firebase_auth/firebase_auth.dart';


class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key, });


@override
  State<SigninScreen> createState() => _SigninScreenState();
}

//class FirebaseAuthService{

//}

class _SigninScreenState extends State<SigninScreen> {
  
  final 
  
    TextEditingController username =TextEditingController();
    TextEditingController password =TextEditingController();
  
  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: username.text.trim(), 
      password: password.text.trim()
      );
  }

//@override
 // void initState() {
   // username =TextEditingController();
   // password =TextEditingController();
   // super.initState();
 // }

@override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }


 @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: MyConstant.light,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              FadeInUp(
                duration: Duration(milliseconds: 800),
                child: Container(
                  
                  child: Stack(
                    fit: StackFit.loose,
                    clipBehavior: Clip.none,
                    children: <Widget>[
                  
                        Container(
                          height:340,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/deft.png'),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                      
                      Positioned(
                        bottom: -480,
                        child: Hero(
                          tag: 'layerone',
                          child: Container(
                            width: 395,
                            height: 510,
                            decoration: BoxDecoration(
                              color: MyConstant.secondary,
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)), 
                              ), 
                            ),
                        ),
                        ),
                      
                      Positioned(
                        bottom: -510,
                        child: Hero(
                          tag: 'layertwo',
                          child: Container(
                            width: 395,
                            height: 510,
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
              
              FadeInUp(
                duration: Duration(milliseconds: 800),
                delay: Duration(milliseconds: 100),
                child: Container(
                  padding:  EdgeInsets.only(top: 10, left: 50, right: 50),
                  
                 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('SIGN IN', 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.w700, 
                            fontSize:40,
                            
                            letterSpacing: 8,
                          ),
                        ),
                        
                        SizedBox(height: 10,),
                        
                        
                        
                        MyTextfield(
                          controller: username,
                          obscureText: false,
                          hintText: 'Username',
                        ),
                                
                        SizedBox(height: 25,),
                        
                      
                                
                        MyTextfield(
                          controller: password, 
                          obscureText: true,
                          hintText: 'Password',
                          ), 
                                
                        TextButton(
                          onPressed: (){}, 
                          child: Text('Forgot your username or password?',
                            style: TextStyle(
                            color: MyConstant.light,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.5,
                            decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                  
                        //SizedBox(height: 10,),
                                
                        SizedBox(
                                        
                            child: ElevatedButton(
                              onPressed: (){
                                //SignIn;
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Firstpage()));
                              }, 
                              child: Text('SIGN IN',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                letterSpacing: 4.2,
                                 color: MyConstant.light,
                              ),
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(5),
                                fixedSize: Size(280, 50),
                                backgroundColor: MyConstant.third,
                                foregroundColor: MyConstant.active,
                                shadowColor: MyConstant.primary,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                  
                        SizedBox(height: 20,),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        
                          children: [
                            
                            SizedBox(
                                height: 48,
                                width: 48,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Image.asset('assets/images/google.png'),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(0),
                                      backgroundColor: MyConstant.light,
                                    
                                    ),
                                ),
                              ),
                          
                                
                            
                            SizedBox(
                                height: 48,
                                width: 48,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Image.asset('assets/images/facebook.png'),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(0),
                                    ),
                                ),
                              ),
                            
                          ],
                          
                        ),
                        
                        TextButton(
                          onPressed: (){}, 
                          child: Text("Don't have an account yet?",
                            style: TextStyle(
                            color: MyConstant.light,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
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