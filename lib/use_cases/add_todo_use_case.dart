import 'package:pln_test/data/payload/add_todo_payload.dart';
import 'package:pln_test/data/repositories/todo_repository.dart';
import 'package:pln_test/infrastructures/base_use_case.dart';

class AddTodoUseCase extends BaseUseCase<bool, AddTodoPayload> {
  final TodoRepository _repository;

  AddTodoUseCase(this._repository);

  @override
  Future<bool> getData(AddTodoPayload request) {
    return _repository.addTodo(request);
  }
}
