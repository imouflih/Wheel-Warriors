import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatModel {
  String name;
  String message;

  static List<ChatModel> chat = [];

  ChatModel({
    required this.name,
    required this.message,
  });

  toJson() {
    return {
      "name": name,
      "message": message,
    };
  }

  factory ChatModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return ChatModel(
      name: data['name'],
      message: data['message'],
    );
  }

  static Future<void> getChatMessages() async {
    final chatCollection = FirebaseFirestore.instance.collection('chat');
    final querySnapshot = await chatCollection.get();
    chat =
        querySnapshot.docs.map((doc) => ChatModel.fromSnapshot(doc)).toList();
  }

  static void sendMessage(String username, String message) async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('chat').add({
      'name': username,
      'message': message,
    });
  }

  static void showMessagesDialog(BuildContext context, String username) {
    ChatModel.getChatMessages();
    final TextEditingController _controller = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return FutureBuilder<List<ChatModel>>(
          builder: (context, snapshot) {
            final chatMessages = chat;
            return AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Messages'),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              content: Container(
                height: 400,
                width: 400,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: chatMessages.map((message) {
                          return ListTile(
                            title: Text(message.name),
                            subtitle: Text(message.message),
                          );
                        }).toList(),
                      ),
                    ),
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "Type your message",
                        suffixIcon: IconButton(
                          onPressed: () {
                            String message = _controller.text;
                            if (_controller.text.trim().isNotEmpty) {
                              ChatModel.sendMessage(username, message.trim());
                              _controller.clear();
                            }
                          },
                          icon: const Icon(Icons.send),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
