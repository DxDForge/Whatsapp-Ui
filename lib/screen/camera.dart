import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('camera',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      
    );
  }
}