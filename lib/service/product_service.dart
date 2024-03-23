

import 'package:dio/dio.dart';
import 'package:search_with_laza_and_dummy_api/model/product_model.dart';

Future<List<ProductModel>> getProduct()async{
  Dio dio = Dio();

  Response response =await dio.get("https://dummyjson.com/products");

  List<ProductModel> products = List.generate(response.data['products'].length, (index) => ProductModel.fromMap(response.data['products'][index]));

  return products;

}

Future<List<String>> getCategory()async{
   Dio dio = Dio();

  Response response =await dio.get("https://dummyjson.com/products/categories");

  List<String> category = List.generate(response.data.length, (index) => response.data[index]);

  return category;


}