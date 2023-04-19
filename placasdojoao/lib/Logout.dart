import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'Login.dart';


class Logout extends StatelessWidget {
  const Logout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      home: SplashScreen(),         
    );
  }
}

  class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(Login());
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [                          

              SizedBox(
                  height: 500,
                  width: 350,
                  child: Image.asset("assets/placasjoaoborda.png", width: 800)
                  ),
                  SizedBox(
                    height: 50,
                                        
                  ),

             
              Text("--- Emplacando a sua menssagem ---", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
            ],
        ),
      ),
    );
  }
}
