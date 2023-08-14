import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/todo_model.dart';
import 'package:flutter_application_1/service/todo_servicel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial()) {
    getTodo();
  }

  List<Todomodel> todo = [];
  getTodo() async {
    try {
      emit(TodoLoading());
      todo = await todoService().gettodo();
      emit(TodoSuccess());
    } catch (e) {
      emit(TodoError());
    }
  }
}
