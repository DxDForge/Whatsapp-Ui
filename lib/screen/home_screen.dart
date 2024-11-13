import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/calls.dart';
import 'package:whatsapp_clone/screen/camera.dart';
import 'package:whatsapp_clone/screen/chats.dart';
import 'package:whatsapp_clone/screen/status.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt,)),
            Tab(text: "CHATS",),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],indicatorColor: Colors.white,),

          toolbarHeight: 125,
           elevation: 0,
          backgroundColor: const Color(0XFF008069),
       
          // centerTitle: true,
          title: UiHelper.customText(
              text: 'WhatsApp',
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold),
          actions: [
            IconButton(
            onPressed: (){}, 
            icon:const Icon(Icons.search),
            )
          ],
        ),
        body: TabBarView(children: [
          const Camera(),
           Chats(),
          const Status(),
          const Calls(),
        ]),
      ),
    );
  }
}
