import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class CallsScreen extends StatelessWidget {
  CallsScreen({super.key});

  var callLogs = [
    {
      'name': 'DxD Forge',
      'time': 'Today, 10:45 AM',
      'type': Icons.call_made, // Outgoing call
      'isMissed': false,
      'img':'https://scontent.fdac140-1.fna.fbcdn.net/v/t39.30808-1/464340447_122189732270223933_8882111173503510350_n.jpg?stp=dst-jpg_s200x200&_nc_cat=109&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=xLiRlTiObmwQ7kNvgF5ccQw&_nc_zt=24&_nc_ht=scontent.fdac140-1.fna&_nc_gid=AoNozqNa5w27EliXHlLU6gx&oh=00_AYD5XO-i0PwmMpygLuHOIpSAWVwPBxvk5b4qXj-JKkA4iw&oe=673A67C2'
    },
    {
      'name': 'Robert jr.',
      'time': 'Yesterday, 8:15 PM',
      'type': Icons.call_received, // Incoming call
      'isMissed': false,
       'img':'data:image/jpeg;base64,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'
      },
    {
      'name': 'Mahadi Hasan',
      'time': 'Yesterday, 7:30 PM',
      'type': Icons.call_received, // Missed call
      'isMissed': true,
      'img':'https://media.licdn.com/dms/image/v2/D5635AQEqaxTy3DJFDQ/profile-framedphoto-shrink_200_200/profile-framedphoto-shrink_200_200/0/1726643839145?e=1732111200&v=beta&t=UmnguPWKhuWGU_m4Xg3NDcT8OXfUGYJ-bXLHoyBCdBE'
    },
    {
      'name': 'John Doe',
      'time': '2 days ago, 5:00 PM',
      'type': Icons.call_made, // Outgoing call
      'isMissed': false,
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKdftMTz2woyGr0rwkw95l13jojCjgmCztYg&s'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top:20),
            child: Row(
              
              children: [
                UiHelper.customText(
                    text: 'Recent calls',
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: callLogs.length,
              itemBuilder: (context, index) {
                var call = callLogs[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(call['img'].toString()!),
                    radius: 30,
                  ),
                  title: UiHelper.customText(
                      text: call['name'].toString(), fontSize: 16),
                  subtitle: Row(
                    children: [
                      Icon(
                        call['type'] as IconData, // Cast 'type' as IconData
                        color: call['isMissed'] as bool
                            ? Colors.red
                            : Colors.green,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      UiHelper.customText(
                          text: call['time'].toString(), fontSize: 14),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.call, color: Colors.teal),
                    onPressed: () {
                      // Handle call action
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle new call action
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add_call),
      ),
    );
  }
}
