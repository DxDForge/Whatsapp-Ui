// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class Chats extends StatelessWidget {
   Chats({super.key});
  var  userData=[
    {
      "name": "DxD Forge",
      "image": "https://scontent.fdac140-1.fna.fbcdn.net/v/t39.30808-1/464340447_122189732270223933_8882111173503510350_n.jpg?stp=dst-jpg_s200x200&_nc_cat=109&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=xLiRlTiObmwQ7kNvgF5ccQw&_nc_zt=24&_nc_ht=scontent.fdac140-1.fna&_nc_gid=AaA6nKqhCa2L4hf-CCj1P5J&oh=00_AYDvcYzrnQa1W4XNo5FmGOyEoNAx7xAuu9gbnp8aOjI9UQ&oe=673A67C2",
      "lastMessage": "do you need A app for you business",
      "time":'03.25 am',
      'msg':'5',
    },
    {
      "name": "Larry Doe",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMG6KFqZKKClCagLrBgRn5a6aqC-myicy-Dg&s",
      "lastMessage": "go to DxD Forge",
      "time":'04.25 am',
      'msg':'13',
    },
    {
      "name": "prianka salvey",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTNjkaQHLXfokbl1GiKnXl6v7GNgnG8rb3JA&s",
      "lastMessage": "Flutter mobile app development",
      "time":'03.25 pm',
      'msg':'2',
    },
    {
      "name": "Mahadi Hasan",
      "image": "https://media.licdn.com/dms/image/v2/D5635AQGJ1cW6Nxtyfg/profile-framedphoto-shrink_200_200/profile-framedphoto-shrink_200_200/0/1703453707341?e=1732104000&v=beta&t=aBCPfnTCBH8ViCNsRvBoMsHnpBn4RGYTvC8yCXXG2Co",
      "lastMessage": "Are you ready",
      "time":'01.05 pm',
      'msg':'8',
    },
    {
      "name": "DxD Forge",
      "image": "https://scontent.fdac140-1.fna.fbcdn.net/v/t39.30808-1/464340447_122189732270223933_8882111173503510350_n.jpg?stp=dst-jpg_s200x200&_nc_cat=109&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=xLiRlTiObmwQ7kNvgF5ccQw&_nc_zt=24&_nc_ht=scontent.fdac140-1.fna&_nc_gid=AaA6nKqhCa2L4hf-CCj1P5J&oh=00_AYDvcYzrnQa1W4XNo5FmGOyEoNAx7xAuu9gbnp8aOjI9UQ&oe=673A67C2",
      "lastMessage": "do you need A app for you business",
      "time":'03.25 am',
      'msg':'5',
    },
    {
      "name": "Larry Doe",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMG6KFqZKKClCagLrBgRn5a6aqC-myicy-Dg&s",
      "lastMessage": "go to DxD Forge",
      "time":'04.25 am',
      'msg':'13',
    },
    {
      "name": "prianka salvey",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTNjkaQHLXfokbl1GiKnXl6v7GNgnG8rb3JA&s",
      "lastMessage": "Flutter mobile app development",
      "time":'03.25 pm',
      'msg':'2',
    },
    {
      "name": "Mahadi Hasan",
      "image": "https://media.licdn.com/dms/image/v2/D5635AQGJ1cW6Nxtyfg/profile-framedphoto-shrink_200_200/profile-framedphoto-shrink_200_200/0/1703453707341?e=1732104000&v=beta&t=aBCPfnTCBH8ViCNsRvBoMsHnpBn4RGYTvC8yCXXG2Co",
      "lastMessage": "Are you ready",
      "time":'01.05 pm',
      'msg':'8',
    },
    {
      "name": "DxD Forge",
      "image": "https://scontent.fdac140-1.fna.fbcdn.net/v/t39.30808-1/464340447_122189732270223933_8882111173503510350_n.jpg?stp=dst-jpg_s200x200&_nc_cat=109&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=xLiRlTiObmwQ7kNvgF5ccQw&_nc_zt=24&_nc_ht=scontent.fdac140-1.fna&_nc_gid=AaA6nKqhCa2L4hf-CCj1P5J&oh=00_AYDvcYzrnQa1W4XNo5FmGOyEoNAx7xAuu9gbnp8aOjI9UQ&oe=673A67C2",
      "lastMessage": "do you need A app for you business",
      "time":'03.25 am',
      'msg':'5',
    },
    {
      "name": "Larry Doe",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMG6KFqZKKClCagLrBgRn5a6aqC-myicy-Dg&s",
      "lastMessage": "go to DxD Forge",
      "time":'04.25 am',
      'msg':'13',
    },
    {
      "name": "prianka salvey",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTNjkaQHLXfokbl1GiKnXl6v7GNgnG8rb3JA&s",
      "lastMessage": "Flutter mobile app development",
      "time":'03.25 pm',
      'msg':'2',
    },
    {
      "name": "Mahadi Hasan",
      "image": "https://media.licdn.com/dms/image/v2/D5635AQGJ1cW6Nxtyfg/profile-framedphoto-shrink_200_200/profile-framedphoto-shrink_200_200/0/1703453707341?e=1732104000&v=beta&t=aBCPfnTCBH8ViCNsRvBoMsHnpBn4RGYTvC8yCXXG2Co",
      "lastMessage": "Are you ready",
      "time":'01.05 pm',
      'msg':'8',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:ListView.builder(
        itemCount: userData.length,
        itemBuilder:(context,index) {
        
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(userData[index]['image'].toString()),
          ),
          title: UiHelper.customText(text: userData[index]['name'].toString(), fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),
          subtitle:UiHelper.customText(text: userData[index]['lastMessage'].toString(), fontSize: 13),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.customText(text: userData[index]['time'].toString(), fontSize: 12, color: const Color(0XFF026500),fontWeight: FontWeight.w700),
              const SizedBox(height: 3),
               CircleAvatar(radius: 8,
              backgroundColor:const Color(0XFF026500),
              child: UiHelper.customText(text: userData[index]['msg'].toString(), fontSize: 12, color:  Colors.white),
              ),
              

            ],
          ),
        );
      }),
      floatingActionButton:FloatingActionButton(
        backgroundColor: const Color(0XFF008665),
        onPressed: (){},
        child: Image.asset("assets/images/message.png"),) ,

    );
  }
}