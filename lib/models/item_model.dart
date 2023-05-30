class ItemModel {
  String name;
  String category;
  String image;
  int price;
  int power;
  int acceleration;
  int weight;
  int speed;

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

  static ItemModel newItem = ItemModel(
    name: "Vulcan 500",
    image: "",
    category: "Wheels",
    price: 1000,
    power: 15,
    acceleration: 7,
    weight: 2,
    speed: 5,
  );

  static List<ItemModel> items = [
    newItem,
    newItem,
    newItem,
    ItemModel(
      name: "Gadran",
      image: "",
      category: "Wheels",
      price: 1000,
      power: 15,
      acceleration: 7,
      weight: 2,
      speed: 5,
    ),
    ItemModel(
      name: "ISIS DPI80",
      image: "",
      category: "Wheels",
      price: 1000,
      power: 15,
      acceleration: 7,
      weight: 2,
      speed: 5,
    ),
    ItemModel(
      name: "Operos 250",
      image: "",
      category: "Wheels",
      price: 1000,
      power: 15,
      acceleration: 7,
      weight: 2,
      speed: 5,
    ),
    ItemModel(
      name: "Fast EDR Turbo",
      image: "",
      category: "Wheels",
      price: 1000,
      power: 15,
      acceleration: 7,
      weight: 2,
      speed: 5,
    ),
    newItem,
    newItem,
    newItem,
    newItem,
    newItem,
  ];
}
