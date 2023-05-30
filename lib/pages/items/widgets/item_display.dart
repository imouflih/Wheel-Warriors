import 'package:wheel_warriors/constants.dart';
import 'package:wheel_warriors/models/item_model.dart';
import 'package:flutter/material.dart';

List<Widget> buildItemDisplay({required ItemModel item}) => [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          // child: Image.asset(
          //   item.image,
          //   height: 350,
          //   fit: BoxFit.cover,
          // ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding / 4),
        child: Text(
          item.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding / 4),
        child: Text(
          "Category: " + item.category,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.blueGrey,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding),
        child: Row(
          children: [
            const Text(
              "Price: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              item.price.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding),
        child: Row(
          children: [
            const Text(
              "Power: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              item.power.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding),
        child: Row(
          children: [
            const Text(
              "Acceleration: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              item.acceleration.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding),
        child: Row(
          children: [
            const Text(
              "Weight: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              item.weight.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding),
        child: Row(
          children: [
            const Text(
              "Speed: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              item.speed.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    ];
