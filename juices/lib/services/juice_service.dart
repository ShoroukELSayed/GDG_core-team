import 'package:dio/dio.dart';
import 'package:juices/models/juice_model.dart';

class JuiceService {
  Future<List<JuiceModel>> getJuice() async {
    try {
  Response response =await Dio().get('https://pixabay.com/api/?key=47759315-d248deb8323a727e32589deb5&q=juice');
  Map <String,dynamic> jsonData = response.data;

  List<dynamic> juices = jsonData['hits'];
  List<JuiceModel> juiceList = [];

  for (var juice in juices) {
    JuiceModel juiceModel = JuiceModel.fromJson(juice);
    juiceList.add(juiceModel);
  }
  return juiceList;
} on Exception catch (e) {
    throw Exception(e.toString());
}
  }
}