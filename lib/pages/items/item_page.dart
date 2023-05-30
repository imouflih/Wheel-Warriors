import 'package:wheel_warriors/constants.dart';
import 'package:wheel_warriors/models/item_model.dart';
import 'package:wheel_warriors/pages/items/widgets/item_display.dart';
import 'package:wheel_warriors/pages/items/widgets/bottom.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  ItemPage({required this.item});

  final ItemModel item;

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(Constants.kPadding),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.kPadding * 4,
            ),
            child: Column(
              children: [
                ...buildItemDisplay(item: widget.item),
                ...buildBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
