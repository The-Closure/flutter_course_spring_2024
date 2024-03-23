import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:search_with_laza_and_dummy_api/model/product_model.dart';
import 'package:search_with_laza_and_dummy_api/service/product_service.dart';

void main() {
  runApp(MyApp());
}

List<ProductModel> result = [];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getProduct(),
        builder: (context, response) {
          if (response.hasData) {
            return Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.home))
                ],
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("welcome to laza"),
              ),
              Row(
                children: [
                  SizedBox(
                      width: 275,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            // List<ProductModel>? products = response.data;
                            result = [];
                            response.data!.forEach((element) {
                              if (element.title.contains(value)) {
                                result.add(element);
                              }
                            });
                          });
                        },
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic),
                    color: Colors.purple,
                  )
                ],
              ),
              FutureBuilder(
                  future: getCategory(),
                  builder: (context, category) {
                    if (category.hasData) {
                      return SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: category.data!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: const Color.fromARGB(255, 236, 228, 228),
                                width: 115,
                                height: 50,
                                child:
                                    Center(child: Text(category.data![index])),
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return LinearProgressIndicator(
                        minHeight: 2,
                      );
                    }
                  }),
              Expanded(
                  child: (result.length != 0)
                      ? GridView.builder(
                          itemCount: result.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 12,
                                  crossAxisCount: 2),
                          itemBuilder: (context, ind) {
                            print("object");
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                        productModel: response.data![ind],
                                      ),
                                    ));
                              },
                              child: Container(
                                height: 255,
                                width: 160,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Image.network(result[ind].thumbnail),
                                      Text(
                                        result[ind].title,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text(
                                        result[ind].description,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text(
                                        result[ind].price.toString(),
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      : GridView.builder(
                          itemCount: response.data!.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 12,
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                        productModel: response.data![index],
                                      ),
                                    ));
                              },
                              child: Container(
                                height: 255,
                                width: 160,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Image.network(
                                          response.data![index].thumbnail),
                                      Text(
                                        response.data![index].title,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text(
                                        response.data![index].description,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text(
                                        response.data![index].price.toString(),
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ))
            ]);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(productModel.thumbnail),
          ListTile(
            trailing: Text(productModel.price.toString()),
            title: Text(productModel.title),
            subtitle: Text(productModel.description),
          )
        ],
      ),
    );
  }
}
