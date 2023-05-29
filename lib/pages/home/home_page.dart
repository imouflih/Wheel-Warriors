import 'package:firebase_auth/firebase_auth.dart';
import '../../auth.dart';
import 'package:flutter/material.dart';
import 'widgets/navigation_bar.dart';
import 'widgets/fab.dart';
import 'widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Widget _userName() {
    String username = user?.email?.split('@').first ?? 'User name';
    return Text(username);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFAB(),
      bottomNavigationBar: buildNavigationBar(),
      backgroundColor: Colors.grey,
    );
  }
}
