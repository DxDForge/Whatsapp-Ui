import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFF00A884)),
          useMaterial3: false,
          
          ),

    home:  const SplashScreen(),
          
    );
  }
}
