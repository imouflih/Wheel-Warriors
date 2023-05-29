import 'package:wheel_warriors/constants.dart';
import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
      const Padding(
        padding: EdgeInsets.only(
          left: 2 * Constants.kPadding,
          top: Constants.kPadding,
        ),
        child: Text(
          "Store",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 2 * Constants.kPadding,
          vertical: Constants.kPadding,
        ),
        child: Text(
          "Build your vehicle and become a warrior!",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 17,
          ),
        ),
      ),
    ];
