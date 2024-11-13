import 'package:flutter/material.dart';

class SelectContactScreen extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {'name': 'Michael', 'status': 'Busy', 'avatar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn794dBuWK6hSJS4RcXGdvI01D6wyV4Xbvkw&s'},
    {'name': 'Franklin', 'status': 'Cool', 'avatar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrlDsVsseRjEXcnsPwrf31S5m349leMmSpdw&s'},
    {'name': 'Trevor', 'status': 'Cool', 'avatar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh7ROsqx8cw73KsbndT3u914lczr0m0gwFdg&s'},
    {'name': 'Michael', 'status': 'Busy', 'avatar': 'https://placekitten.com/203/203'},
    {'name': 'Franklin', 'status': 'Cool', 'avatar': 'https://placekitten.com/204/204'},
    {'name': 'Trevor', 'status': 'Cool', 'avatar': 'https://placekitten.com/205/205'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Contact'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          var contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contact['avatar']!),
            ),
            title: Text(contact['name']!),
            subtitle: Text(contact['status']!),
            onTap: () {
              // Handle contact selection
            },
          );
        },
      ),
    );
  }
}
