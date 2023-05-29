import 'package:wheel_warriors/constants.dart';
import 'package:flutter/material.dart';

Widget buildSearchBar() => Padding(
      padding: const EdgeInsets.all(2 * Constants.kPadding),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search for an item",
          fillColor: Colors.black.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: Constants.kPadding,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
        ),
      ),
    );
