import 'package:dio/dio.dart';
import 'package:quiz_app_with_restapi/model/animal_model.dart';

Future<List<AnimalModel>> getAllAniaml() async {
  Dio dio = Dio();
  Response response =
      await dio.get("https://65f1aa8d034bdbecc763523e.mockapi.io/Animal");
  List<AnimalModel> animals = List.generate(response.data.length,
      (index) => AnimalModel.fromMap(response.data[index]));
  return animals;
}

createNewAnimal(AnimalModel animalModel) async {
  Dio dio = Dio();

  Response response = await dio.post(
      "https://65f1aa8d034bdbecc763523e.mockapi.io/Animal",
      data: animalModel.toMap());

  if (response.statusCode == 201) {
    return true;
  } else {
    return false;
  }
}
