import 'package:wheel_warriors/constants.dart';
import 'package:flutter/material.dart';

class BuildFAB extends StatefulWidget {
  @override
  _BuildFABState createState() => _BuildFABState();
}

class _BuildFABState extends State<BuildFAB> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40.0),
                  const Text(
                    "Search items by",
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  const SizedBox(height: Constants.kPadding),
                  _buildCategory(
                    category: "Wheels",
                    // cars wheels
                    iconData: Icons.heat_pump_outlined,
                    color: Colors.blue,
                  ),
                  _buildCategory(
                    category: "Brakes",
                    iconData: Icons.directions_car,
                    color: Colors.deepOrange,
                  ),
                  _buildCategory(
                    category: "Motors",
                    iconData: Icons.settings,
                    color: Colors.blue,
                  ),
                  _buildCategory(
                    category: "Spoilers",
                    iconData: Icons.carpenter_outlined,
                    color: Colors.cyan,
                  ),
                  _buildCategory(
                    category: "Kits",
                    iconData: Icons.directions_car_outlined,
                    color: Colors.yellow.shade700,
                  ),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
        );
      },
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: const Icon(
        Icons.list_alt_rounded,
        color: Colors.white,
      ),
    );
  }

  Widget _buildCategory({
    required String category,
    required IconData iconData,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Constants.kPadding,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 0.5, // You can adjust the width as you want
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: InkWell(
          onTap: () {}, // TODO: go to category page of the item
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: double.infinity,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 2 * Constants.kPadding,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),
                Text(
                  category,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
