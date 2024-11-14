import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/auth/login_screen.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 150), // Push image down a bit from the top
          
          // Circular onboarding image
          Center(
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.4, // Set radius to 40% of screen width
              backgroundImage: const AssetImage('assets/images/boarding.png'),
              backgroundColor: Colors.transparent,
            ),
          ),
          
          const SizedBox(height: 50),

          // Welcome text and description
          UiHelper.customText(
            text: "Welcome to WhatsApp",
            color: Colors.black,
            fontSize: 24,
            // fontWeight: FontWeight.bold,
            // textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),

          // Privacy policy and terms message
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    children: [
                      TextSpan(text: 'Read our ',style: TextStyle(color: Color(0XFF5E5E5E),fontSize: 16,height: 1.2)),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Color(0xFF0C42CC)),
                      ),
                      TextSpan(text: '. Tap “Agree and continue” to accept the ',style: TextStyle(color: Color(0XFF5E5E5E),fontSize: 16,height: 1.2)),
                      TextSpan(
                        text: 'Terms of Service.',
                        style: TextStyle(color: Color(0xFF0C42CC),fontSize: 16,height: 1.2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Floating action button at the bottom
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9, // Full-width button with slight margins
          child: UiHelper.customButton(
            context: context,
            callback: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            ),
            buttonName: "Agree and continue",
            // color: const Color(0xFF25D366), // WhatsApp green color for the button
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
