import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});

  final List<Map<String, dynamic>> messages = [
    {
      'name': 'Toko meja',
      'message': 'Pesanan anda sedang di kirim',
      'time': '20:18',
      'images': 'images/meja.webp',
    },
    {
      'name': 'Toko serum',
      'message': 'Kami sedang ada diskon untuk serum vitamin c',
      'time': '19:22',
      'images': 'images/serum.webp',
    },
    {
      'name': 'Toko Ayam',
      'message': 'Ayam nya Habis mas!!',
      'time': '14:34',
      'images' : 'images/1.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, '/');
        }, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          var message = messages[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(message['images']),
            ),
            title: Text(message['name']),
            subtitle: Text(message['message']),
            trailing: Text(message['time']),
            onTap: () {
              Navigator.pushNamed(context, 'detailchat');
            },
          );
        },
      ),
    );
  }
}
