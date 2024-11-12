import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/home_screen.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = "Bangladesh"; // Ensure this exists in countries

  final List<String> countries = [
    "Bangladesh", // Ensure Bangladesh is in the list as the initial value
    "India",
    "Pakistan",
    "Afghanistan",
    "Nepal",
    "Bhutan",
    "Sri Lanka",
    "Maldives",
    "Thailand",
    "Myanmar",
    "Cambodia",
    "Laos",
    "Vietnam",
    "Indonesia",
    "Philippines",
    "Singapore",
    "Malaysia",
    "Brunei",
    "Timor-Leste",
    "East Timor",
    "Hong Kong",
    "Macau",
    "Taiwan",
    "Japan",
    "South Korea",
    "China",
    "Mongolia",
    "Nauru",
    "Palau",
    "Federated States of Micronesia",
    "Marshall Islands",
    "Kiribati",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Enter your phone number',
          style: TextStyle(
            color: Color(0xFF00A884),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            UiHelper.customText(
              text: 'WhatsApp will need to verify your phone number.',
              fontSize: 14,
              // textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            UiHelper.customText(
              text: 'Carrier charges may apply.',
              fontSize: 14,
              // textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            UiHelper.customText(
              text: 'What\'s my number?',
              fontSize: 14,
              color: const Color(0xFF00A884),
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 50),

            // Country Dropdown
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButtonFormField<String>(
                items: countries.toSet().toList().map((String country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                value: selectedCountry,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00A884)),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Phone Number Field
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  // Country code
                  SizedBox(
                    width: 80,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "+880",
                        contentPadding: EdgeInsets.only(left: 5),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                  ),
                    ),
                  ),
                  SizedBox(width: 10),
              
                  // Phone number input
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                  // hintText: 'Type your phone number',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                  ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Next Button
        
          ],
        ),
      ),

        floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 5.0), // Adjust padding to match button's position
        child: UiHelper.customButton(
          context: context,
          callback: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          ),
          buttonName: "Next",
        ),
        
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
    );
  }
}