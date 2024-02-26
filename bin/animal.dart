// ignore_for_file: public_member_api_docs, sort_constructors_first

abstract class Creature {
  eating();
}

class Animal extends Creature {
  // attributes
  String _color = 'red';
  String? name;
  int? weight;
  // Animal(this.color, this.name, this.weight);
  // Animal({this.color = 'red', this.name = 'jack', this.weight = 5});
  Animal({required this.name, required this.weight});
  // Animal(this.color, this.name, [this.weight = 5]);

  // void setData(String newcolor, String newname, int newweight) {}
  // Methodes
  void setColor(String color) {
    _color = color;
  }

  set color(String color) {
    _color = color;
  }

  String getColor() {
    return _color;
  }

  String get color => _color;

  information() {
    // ignore: prefer_interpolation_to_compose_strings
    print("$_color $name $weight ");
  }

  sound() {
    print("bla bla");
  }

  move() {
    print("move");
  }

  @override
  eating() {
    // TODO: implement eating
    throw UnimplementedError();
  }
}

class Cat extends Animal {
  bool isStreetCat;
  Cat({
    required this.isStreetCat,
    required super.name,
    required super.weight,
  });
  // ignore: annotate_overrides
  sound() {
    print("meo");
  }
}

class Dog extends Cat {
  Dog({required super.isStreetCat, required super.name, required super.weight});
  // ignore: annotate_overrides
}

class Flower extends Creature {
  @override
  eating() {
    // TODO: implement eating
    throw UnimplementedError();
  }
}
