import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/screen/home_screen.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class ProfileScreen extends StatefulWidget {
  static const Color primaryColor = Color(0xFF00A884);
  static const Color avatarBgColor = Color(0xFFD9D9D9);

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController controller = TextEditingController();
  File? imagePicked;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
          text: 'Profile info',
          fontSize: 16,
          color: ProfileScreen.primaryColor,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            UiHelper.customText(
              text: 'Please provide your name and an optional',
              fontSize: 14,
            ),
            UiHelper.customText(
              text: 'profile photo',
              fontSize: 14,
            ),
            const SizedBox(height: 30),

            // Profile pic --------------------------------
            GestureDetector(
              onTap: () => _optionPopUp(context),
              child: imagePicked == null
                  ? CircleAvatar(
                      radius: 80,
                      backgroundColor: ProfileScreen.avatarBgColor,
                      child: Image.asset(
                        'assets/images/camera.png',
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(imagePicked!),
                    ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Type your name here',
                  hintStyle: TextStyle(color: ProfileScreen.primaryColor),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: ProfileScreen.primaryColor),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ProfileScreen.primaryColor),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ProfileScreen.primaryColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        context: context,
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  const HomeScreen()),
          );
        },
        buttonName: 'Next',
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
    );
  }

  void _optionPopUp(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                  _pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedImage = await _picker.pickImage(source: source);
      if (pickedImage != null) {
        setState(() {
          imagePicked = File(pickedImage.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }
}
