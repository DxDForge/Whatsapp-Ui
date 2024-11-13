import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          // IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),              
        ],
        elevation: 0,
        backgroundColor:Color(0XFF00A884),
        // centerTitle: true,
        title: UiHelper.customText(text: 'WhatsApp', fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
      ),
    );
  }
}