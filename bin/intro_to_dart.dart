import 'package:intro_to_dart/add_number_with_result.dart';

void main() {
  Human person = Human(name: 'Hamed');
  Student first_Student = Student(univ: "IT", name: "Noor");
  person.talk();
  first_Student.talk();

  Human person2 = Student(univ: 'IT', name: "AHmad");

  person2 as Student;

  person2.talk();

  Student it_student ;



  List<Map> nestList = [
    {},
    {},
    {
      "name": "Abd",
      "Mark": 59,
    }
  ];

  Map<String, List<Map>> nestMap = {
    "student": [
      {"name": "Ahmad", "marks": 60},
      {"name": "Noor", "marks": 90},
    ]
  };
  print(nestMap.values.elementAt(0).elementAt(0).values.elementAt(0));
  print(nestList.elementAt(2).values.elementAt(1));

  List students_name = ["Ahmad", "Zena", "Noor", 20];

  Map table = {"name": "Ahmad", "Math 3": 60};

  print(students_name.elementAt(2));

  print(table["name"]);

  int counter = 9;
  print(counter);

  double degree = 90.6;
  String name = "Abdalaziz";

  const int age = 20;
  // age =20.6;

  bool is_correct = true;

  var numbers = "20";
  // numbers = 20;
  numbers = "hello wolrd";

  dynamic classes = "IT";
  classes = 30;

// int? ages;

// print(ages);

// const test ;

// test = "Noor";

  final names;

  names = "Noor";

  print(addTwoNumber(classes, age));

  print(calculate(20, 3, third: 10));
}

calculate(int first, int second, {required int third}) {
  return (first + second) * third;
}

class Human {
  String name;

  Human({required this.name});

  talk() {
    print("I am Talking");
  }
}

class Student extends Human {
  String univ;

  Student({required this.univ, required super.name});
}
