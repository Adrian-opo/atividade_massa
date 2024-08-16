import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Mensagens',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black),
            onPressed: () {
              // Ação para criar nova mensagem
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text(
              'Mensagens',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Pesquise bate-papos e mensagens',
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
                    context,
                    avatar: 'https://example.com/avatar1.png',
                    name: 'Sajib Rahman',
                    message: 'Hi, John! 👋 How are you doing?',
                    time: '09:46',
                    isRead: true,
                  ),
                  _buildMessageItem(
                    context,
                    avatar: 'https://example.com/avatar2.png',
                    name: 'Adom Shafi',
                    message: 'Typing...',
                    time: '08:42',
                    isTyping: true,
                  ),
                  _buildMessageItem(
                    context,
                    avatar: 'https://example.com/avatar3.png',
                    name: 'HR Rumen',
                    message:
                        'You: Cool! 😁 Let’s meet at 18:00 near the traveling!',
                    time: 'Yesterday',
                    isRead: true,
                  ),
                  _buildMessageItem(
                    context,
                    avatar: 'https://example.com/avatar4.png',
                    name: 'Anjelina',
                    message: 'You: Hey, will you come to the party on Saturday?',
                    time: '07:56',
                    isRead: true,
                  ),
                  _buildMessageItem(
                    context,
                    avatar: 'https://example.com/avatar5.png',
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

  Widget _buildMessageItem(BuildContext context,
      {required String avatar,
      required String name,
      required String message,
      required String time,
      bool isRead = false,
      bool isTyping = false}) {
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
              SizedBox(height: 4.0),
              if (isRead)
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 18.0,
                ),
              if (!isRead)
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.grey,
                  size: 18.0,
                ),
            ],
          ),
        ],
      ),
    );
  }
}