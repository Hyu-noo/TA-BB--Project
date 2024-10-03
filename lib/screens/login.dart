import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabb/screens/start.dart';

class LoginScreen extends StatelessWidget{

const LoginScreen({Key?key}) :super(key:key);
    @override
    Widget build(BuildContext context)
    {
      double screenHeight = MediaQuery.of(context).size.height;
      double screenWidth = MediaQuery.of(context).size.width;
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children:[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight:Radius.circular(40.0),
                  ),
                  child: Container(
                    height: screenHeight * 0.8,
                    color: const Color(0xFF2196F3),
                  ),
                  ),
                  Positioned(
                    top: screenHeight * 0.01,
                    left:0,
                    right:0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Image.asset(
                          'assets/images/Logo.png',
                          width: screenWidth ,
                          height: screenWidth ,
                        ),
                      SizedBox(height: screenHeight * 0.01),
                      const Text('따삐로\n\n시작하는\n\n새로운 활기',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight:FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      ),
                      ],
                    ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          InkWell(
                            onTap:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder:(context)=>StartScreen()),
                              );
                            },
                            child: Image.asset(
                              'assets/images/kakao.png',
                              width: screenWidth * 0.9, //380  0.9
                              height: screenHeight * 0.15, //130 0.15
                            )
                          )
                        ]
                      ) ,)
                  
                  ]

              )
          );
    }


}