import 'package:flutter/material.dart';
import '../../../auth.dart';

Future<void> _signOut() async {
  await Auth().signOut();
}

Widget _signOutButtonIcon() {
  return IconButton(
    onPressed: () {
      _signOut();
    },
    icon: const Icon(Icons.logout),
  );
}

AppBar buildAppBar() => AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      title: const Text('Wheel Warriors',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          )),
      actions: [_signOutButtonIcon()],
    );
