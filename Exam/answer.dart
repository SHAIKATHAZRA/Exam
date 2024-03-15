class Fruit {
  String name;
  String color;
  double price;

  Fruit(this.name, this.color, this.price);

  void displayDetails() {
    print('Name: $name, Color: $color, Price: \$${price.toStringAsFixed(2)}');
  }

  void applyDiscount(double discountPercentage) {
    price -= (price * discountPercentage / 100);
  }
}

void main() {
  List<Fruit> fruits = [
    Fruit('Apple', 'Red', 2.5),
    Fruit('Banana', 'Yellow', 1.0),
    Fruit('Grapes', 'Purple', 3.0)
  ];

  print("Original Fruit Details before Discount:");
  for (var fruit in fruits) {
    fruit.displayDetails();
  }

  applyPriceDiscount(fruits, 10);

  print("\nFruit Details After Applying 10% Discount:");
  for (var fruit in fruits) {
    fruit.displayDetails();
  }
}

void applyPriceDiscount(List<Fruit> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    fruit.applyDiscount(discountPercentage);
  }
}