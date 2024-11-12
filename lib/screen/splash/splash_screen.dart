import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/on_boarding.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnBoarding()));
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/whatsapp 1.png"),
        const SizedBox(height: 20,),
        UiHelper.customText(text: 'WhatsApp',fontWeight: FontWeight.bold, fontSize: 18),
      ],
    ),
  ),
    );
  }
}