import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double containerWidth = 300;
  Color containerColor = Colors.amber;
  List items = [
    const ListTile(
      key: ValueKey('1'),
      title: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text("1"),
      ),
    ),
    const ListTile(
      key: ValueKey('2'),
      title: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text("2"),
      ),
    ),
    const ListTile(
      key: ValueKey('3'),
      title: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text("3"),
      ),
    ),
    const ListTile(
      key: ValueKey('4'),
      title: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text("4"),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          AnimatedContainer(
            width: containerWidth,
            height: 300,
            color: containerColor,
            duration: const Duration(seconds: 3),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      containerWidth = containerWidth + 100;
                      containerColor = Colors.purple;
                    },
                  );
                },
                child: const Text(
                  "change container width",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 500,
            child: ReorderableListView.builder(
              itemBuilder: (context, index) {
                return items[index];
              },
              onReorder: (oldIndex, newIndex) {
                print("oldIndex = $oldIndex      newIndex = $newIndex");
                if (oldIndex < newIndex) {
                  newIndex = newIndex - 1;
                }

                Widget temp = items.removeAt(oldIndex);
                items.insert(newIndex, temp);
              },
              itemCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}



// class HomePage3 extends StatelessWidget {
//    HomePage3({super.key});

//   double containerWidth = 300;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: containerWidth,
//           height: 300,
//           color: Colors.amber,
//           child: Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 containerWidth = containerWidth + 50;
//                 print(containerWidth);
//               },
//               child: const Text(
//                 "change container width",
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }