// ignore_for_file: public_member_api_docs, sort_constructors_first

void main() {


  int x = 3;
  print(x);
  print(3);
  DataBase myData = DataBase(names: ["Ahmad", "Noor"]);

  DataBase myDataEdit = DataBase(names: ["Ahmad", "Noor"]);

  print(myDataEdit.names);

  if (myData.names == myDataEdit.names) {
    print("Yes");
  } else {
    print("No");
  }

  DataBase newDataBase = DataBase.getIntance();

  newDataBase.names.add("Ahmad");

  DataBase newEditDataBase = DataBase.getIntance();

  print(newEditDataBase.names);

  if (newDataBase == newEditDataBase) {
    print("Yes");
  } else {
    print("No");
  }
  // A a=A(counter: 20);

  // Function add = (){
  //   print("object");
  // };

  Line l1 = Line(end_point: Point(x: 0, y: 0), start_point: Point(x: 2, y: 2));

  print(l1.start_point.x);

  Line l2 =
      Line(end_point: Point(x: 2, y: 2), start_point: Point(x: 10, y: 10));

  print(l2.start_point.x);
}

class A {
  int counter;

  A({required this.counter});
}

class Line {
  Point start_point;
  Point end_point;
  Line({
    required this.start_point,
    required this.end_point,
  });
}

class Point {
  int x;
  int y;
  Point({
    required this.x,
    required this.y,
  });
}

class DataBase {
  List<String> names;

  DataBase({
    required this.names,
  });

  static DataBase db = DataBase(names: []);

  static getIntance() {
    return db;
  }
}
