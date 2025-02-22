import 'package:pln_test/data/payload/edit_todo_payload.dart';
import 'package:pln_test/data/repositories/todo_repository.dart';
import 'package:pln_test/infrastructures/base_use_case.dart';

class EditTodoUseCase extends BaseUseCase<bool, EditTodoPayload> {
  final TodoRepository _repository;

  EditTodoUseCase(this._repository);

  @override
  Future<bool> getData(EditTodoPayload request) {
    return _repository.editTodo(request);
  }
}
