import 'dart:math';

import 'package:pln_test/domain/entities/todo.dart';
import 'package:pln_test/infrastructures/misc/dummy.dart';

class TodoMapper {
  List<Todo> getTodos(dynamic json) {
    List<Todo> todos = [];

    for (var item in json['data']) {
      todos.add(_getTodo(item));
    }

    return todos;
  }

  Todo _getTodo(Map<String, dynamic> json) {
    return Todo(
      id: json["id"] ?? 1,
      userId: json["userId"] ?? 1,
      title: json["title"] ?? '',
      type: listPriority[Random().nextInt(4)],
      completed: json["completed"] ?? false,
    );
  }
}
