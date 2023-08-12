// ignore: camel_case_types
import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/todo_model.dart';

// ignore: camel_case_types
class todoService {
  String url = "https://jsonplaceholder.typicode.com/todos";
  Future<List<Todomodel>> gettodo() async {
    List<Todomodel> todoList = [];
    final response = await Dio().get(url);
    var data = response.data;
    data.forEach((element) {
      Todomodel todo = Todomodel.fromJson(element);
      todoList.add(todo);
    });
    return todoList;
  }
}
