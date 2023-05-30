import 'package:wheel_warriors/constants.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

List<Widget> buildBottom() => [
      const Expanded(
        child: Padding(
          padding: EdgeInsets.all(Constants.kPadding),
          child: SingleChildScrollView(
            child: Text(
              "",
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Share.share('Check out this amazing item on our app!');
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 4.0, horizontal: Constants.kPadding),
                minimumSize: const Size(5, 5),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
              ),
              child: const Text("Share",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 4.0, horizontal: Constants.kPadding),
                minimumSize: const Size(5, 5),
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
              ),
              child: const Text("Purchase",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      )
    ];
