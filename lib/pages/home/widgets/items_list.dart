import 'package:wheel_warriors/constants.dart';
import 'package:wheel_warriors/models/item_model.dart';
import 'package:wheel_warriors/pages/items/item_page.dart';
import 'package:flutter/material.dart';

final List<ItemModel> items = ItemModel.items;

class BuildItemList extends StatelessWidget {
  final String input;
  final String category;
  final VoidCallback onSeeAllPressed;

  BuildItemList({
    required this.input,
    required this.category,
    required this.onSeeAllPressed,
  });

  @override
  Widget build(BuildContext context) {
    final filteredItems = items
        .where((item) =>
            item.name.toLowerCase().contains(input.toLowerCase()) &&
            (category == "" || item.category == category))
        .toList();

    return Container(
      width: double.infinity,
      color: Colors.black.withOpacity(0.1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Constants.kPadding,
              horizontal: Constants.kPadding * 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "List of available items",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: onSeeAllPressed,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: Constants.kPadding,
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 105, 60),
                    minimumSize: const Size(5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text("See all",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                filteredItems.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: Constants.kPadding * 3,
                    right: Constants.kPadding,
                    left: Constants.kPadding,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemPage(
                            item: filteredItems[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            // child: Image.asset(
                            //   filteredItems[index].image,
                            //   height: 180,
                            //   width: 120,
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            filteredItems[index].name,
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            "Price: " + filteredItems[index].price.toString(),
                            style: const TextStyle(
                                fontSize: 10, color: Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
