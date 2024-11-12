import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/auth/login_screen.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Add padding for better alignment
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the onboarding image at the top
            Image.asset(
              'assets/images/boarding.png',
              height: MediaQuery.of(context).size.height * 0.4, // Responsive height
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 50),

            // Text Section
            Center(
              child: Column(
                children: [
                  UiHelper.customText(
                    text: "Welcome to WhatsApp",
                    color: const Color(0xFF000000),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 15),

                  // Privacy policy and terms message
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.customText(text: 'Read our ', fontSize: 14),
                            UiHelper.customText(
                              text: 'Privacy Policy',
                              color: const Color(0xFF0C42CC),
                              fontSize: 14,
                            ),
                            UiHelper.customText(text: '. Tap “Agree and continue”', fontSize: 14),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.customText(text: 'to accept the ', fontSize: 14),
                            UiHelper.customText(
                              text: 'Terms of Service.',
                              color: const Color(0xFF0C42CC),
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Floating action button for navigating to the Home screen
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 5.0), // Adjust padding to match button's position
        child: UiHelper.customButton(
          context: context,
          callback: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          ),
          buttonName: "Agree and continue",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Center the button at the bottom
    );
  }
}
