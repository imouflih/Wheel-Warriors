import 'package:cloud_firestore/cloud_firestore.dart';

class ItemModel {
  String name;
  String category;
  String image;
  int price;
  int power;
  int acceleration;
  int weight;
  int speed;

  static List<ItemModel> items = [];

  ItemModel({
    required this.name,
    required this.category,
    required this.image,
    required this.price,
    required this.power,
    required this.acceleration,
    required this.weight,
    required this.speed,
  });

  toJson() {
    return {
      "name": name,
      "category": category,
      "image": image,
      "price": price,
      "power": power,
      "acceleration": acceleration,
      "weight": weight,
      "speed": speed,
    };
  }

  factory ItemModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return ItemModel(
      name: data['name'],
      category: data['category'],
      image: data['image'],
      price: data['price'],
      power: data['power'],
      acceleration: data['acceleration'],
      weight: data['weight'],
      speed: data['speed'],
    );
  }

  static Future<void> fetchItems() async {
    final querySnapshot =
        await FirebaseFirestore.instance.collection('items').get();
    items =
        querySnapshot.docs.map((doc) => ItemModel.fromSnapshot(doc)).toList();
  }
}
