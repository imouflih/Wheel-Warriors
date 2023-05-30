import 'package:flutter/material.dart';
import '../../../auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../models/chat_model.dart';

final User? user = Auth().currentUser;
String username = user?.email?.split('@').first ?? 'User name';

Widget buildNavigationBar(BuildContext context) => BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.black,
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: IconButton(
              onPressed: () {
                ChatModel.showMessagesDialog(context, username);
              },
              icon: const Icon(Icons.message_outlined, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_shopping_cart, color: Colors.white),
            ),
          ),
        ],
      ),
    );
