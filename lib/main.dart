import 'package:flutter/material.dart';

import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 5,
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 500,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 500,
            height: 500,
            child: Card(
              surfaceTintColor: Colors.blue,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              elevation: 10,
              shadowColor: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "https://img.freepik.com/free-photo/pasta-colored-farfalle-salad-with-tomatoes-mozzarella-basil_2829-14376.jpg?w=1380&t=st=1710595190~exp=1710595790~hmac=421538dee0ef6b3984ab305e402cef10277fdb67ce81c1d5e5225cbee13db3d9",
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Pasta Salad",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(
                    indent: 50,
                    endIndent: 50,
                    height: 20,
                    thickness: 2,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Free photo pasta colored farfalle salad with tomatoes, mozzarella and basil.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 100,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Center(child: Text("Order Now!")),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Center(child: Text("Order Now!")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
