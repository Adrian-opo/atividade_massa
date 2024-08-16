import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Mensagens',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black),
            onPressed: () {
              // Handle new message action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Pesquise bate-papos e mensagens',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: [
                  _buildMessageItem(
                    avatar: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                    name: 'Sajib Rahman',
                    message: 'Hi, John! 👋 How are you doing?',
                    time: '09:46',
                    isRead: true,
                  ),
                  _buildMessageItem(
                    avatar: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                    name: 'Adom Shafi',
                    message: 'Typing...',
                    time: '08:42',
                    isTyping: true,
                  ),
                  _buildMessageItem(
                    avatar: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                    name: 'HR Rumen',
                    message: 'You: Cool! 😁 Let’s meet at 18:00 near the traveling!',
                    time: 'Yesterday',
                    isRead: true,
                  ),
                  _buildMessageItem(
                    avatar: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                    name: 'Anjelina',
                    message: 'You: Hey, will you come to the party on Saturday?',
                    time: '07:56',
                    isRead: true,
                  ),
                  _buildMessageItem(
                    avatar: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                    name: 'Alexa Shorna',
                    message: 'Thank you for coming! Your or...',
                    time: '05:52',
                    isRead: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageItem({
    required String avatar,
    required String name,
    required String message,
    required String time,
    bool isRead = false,
    bool isTyping = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar),
            radius: 28.0,
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: isTyping ? Colors.blue : Colors.grey[700],
                    fontStyle: isTyping ? FontStyle.italic : FontStyle.normal,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
              if (isRead)
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 18.0,
                ),
            ],
          ),
        ],
      ),
    );
  }
}