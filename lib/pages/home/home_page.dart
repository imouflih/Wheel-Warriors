import 'package:firebase_auth/firebase_auth.dart';
import 'package:wheel_warriors/pages/home/widgets/header.dart';
import 'package:wheel_warriors/pages/home/widgets/search_bar.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFAB(),
      bottomNavigationBar: buildNavigationBar(),
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
    );
  }
}
