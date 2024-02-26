// ignore_for_file: public_member_api_docs, sort_constructors_first
// void main(List<String> arguments) async {
//   SumList sumList = SumList([1, 2, 3, 4]);
//   print(sumList.sumOpp());
//   sumFunctional([1, 2, 3, 4, 5]);
//   // List<double> strings = ['hello', 'hi', 'go', 'flutter', 10, 20.5, true];
//   await func();
//   print("hiiii");
// }

import 'animal.dart';

void main(List<String> args) {
  Cat kitty = Cat(isStreetCat: true, name: 'kitty', weight: 100);
  Dog spick = Dog(isStreetCat: true, name: 'spick', weight: 150);
  kitty.sound();
  spick.sound();
  kitty.information();
  Animal animal = Animal(name: 'jack', weight: 100);
  animal.sound();

  testFunction(spick);
  // animal.setColor('brwon');
  // print(animal.getColor());
  // animal.information();
  // animal.color = 'red';
  // animal.name = 'jack';
  // animal.weight = 60;
  // animal.information();
}

testFunction(Creature animalKind) {
  if (animalKind is Dog) {
    print("this is a dog");
  } else if (animalKind is Cat) {
    print("this is a cat");
  } else {
    print("object");
  }
}

Future func() async {
  await Future.delayed(Duration(seconds: 3), () {
    print("Hello");
  });
}

// int sum() {
//   return 10 + 20;
// }

class SumList {
  List items;
  SumList(
    this.items,
  );
  num sumOpp() {
    num sum = 0;
    for (var i = 0; i < items.length; i++) {
      sum = sum + items[i];
    }
    return sum;
  }
}

sumFunctional(List items) {
  print(items.fold<num>(0, (previousValue, nextValue) {
    return previousValue + nextValue;
  }));
}
