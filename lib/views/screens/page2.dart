import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/todo_model.dart';
import 'package:flutter_application_1/service/todo_servicel.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  List<Todomodel> todo = [];
  bool isLoading = true;

  getTodo() async {
    todo = await todoService().gettodo();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getTodo();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: todo.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(todo[index].title ?? "--"),
                trailing: Icon(Icons.person),
              );
            },
          );
  }
}
