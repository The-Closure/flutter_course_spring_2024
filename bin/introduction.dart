void main(List<String> arguments) {
  int counter = 10;
  // Human mhd = Human(age: 20, name: "sljdkfhjl");
  Student student1 = Student(name: "mohhamasd", age: 10, univ: "sdklfjkl");
  print(student1.univ);
  print(student1.age);
  student1.information();
  student1.func();
  // mhd.information();
  // print("${mhd.name}  ${mhd.age}");
  // Human moumen = Human('moumen', 22);
  // moumen.information();
  // moumen.setData('moumen', 22);
  // moumen.information();
  // mhd.setData('rama', 20);
  // mhd.information();
  // mhd.information();
  // int sum = addTwoNumbers();
  print(addTwoNumbers(100, 80));
  // print(addTwoNumbers());
  // int counter2 = 30;
  // int result = counter + counter2;
  // print(result);
  print(counter);
  counter = 20;
  print(counter);
  double degree = 10.5;
  String name = 'Mohammad';
  bool isCorrect = false;
  dynamic time = 40;

  var data;

  const int age = 10;
  final double rate;
  rate = 20.5;
  List varabiles = ['mohammad', 10, 20.5, true];
  num number = 50.2;
  // degree = number;
  print(varabiles.elementAt(2));
  List<String> names = ['rama', 'moumen', 'komi', 'Alhamzah'];
  Map<String, dynamic> user = {
    'name': 'mohammad',
    'phone': 0982254232,
  };
  print(user['name']);
  List<Map<String, dynamic>> users = [
    {
      'name': 'mohammad',
      'phone': 0982254232,
    },
    {
      'name': 'rama',
      'phone': 6541531561,
    },
    {
      'name': 'moumen',
      'phone': 541561651,
    },
  ];
  print(users[0]['name']);
}

int addTwoNumbers(int number1, int number2) {
  // int counter = 20;
  // int counter2 = 20;
  // int result = counter + counter2;
  int result = number1 + number2;
  return result;
}

class Human {
  String? name;
  int? age;

  Human({this.name, this.age});
  // {
  //   // this.name = name;
  //   // this.age = age;
  // }
  void information() {
    print("$age   $name");
  }

  // void setData() {

  // }
}

class Student extends Human {
  String? univ;
  Student({required super.name, required super.age, required this.univ});
  void func() {
    print("I am Student");
  }
}
