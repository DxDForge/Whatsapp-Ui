import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class Status extends StatelessWidget {
  Status({super.key});

  final List<Map<String, String>> statusContent = [
    
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDxKB5PpZjPtcKVzW9f2vZKpYbL_ZlhiuoUw&s',
      'time': '15 minutes ago',
      'name': 'jenefer lopez',
    },
    {
      'img':
          'https://scontent.fdac140-1.fna.fbcdn.net/v/t39.30808-1/464340447_122189732270223933_8882111173503510350_n.jpg?stp=dst-jpg_s200x200&_nc_cat=109&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=xLiRlTiObmwQ7kNvgF5ccQw&_nc_zt=24&_nc_ht=scontent.fdac140-1.fna&_nc_gid=AaA6nKqhCa2L4hf-CCj1P5J&oh=00_AYDvcYzrnQa1W4XNo5FmGOyEoNAx7xAuu9gbnp8aOjI9UQ&oe=673A67C2',
      'time': '2 hours ago',
      'name': 'DxD Forge',
    },

    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRslo_yB3rndBOYg7aO7QmK7TdBIpDtbyzpqg&s',
      'time': '1 day ago',
      'name': 'Max Roddy',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: UiHelper.customText(text: 'Status', fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRujgaleOll9nvG17ZfSz-SXQ5m8eZf7NH0Dw&s'),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0XFF026500),
                      radius: 10,
                      child: Icon(Icons.add, color: Colors.white, size: 15),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.customText(text: 'My Status', fontSize: 20),
            subtitle: UiHelper.customText(text: 'Tap to add status update', fontSize: 12),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.customText(text: 'Recent updates', fontSize: 14, fontWeight: FontWeight.w600),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: statusContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(statusContent[index]['img']!),
                  ),
                  title: UiHelper.customText(text: statusContent[index]['name']!, fontSize: 16, fontWeight: FontWeight.w500),
                  subtitle: UiHelper.customText(text: statusContent[index]['time']!, fontSize: 12, color: Colors.grey),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
