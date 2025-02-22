import 'package:pln_test/data/repositories/todo_repository.dart';
import 'package:pln_test/infrastructures/base_use_case.dart';

class DeleteTodoUseCase extends BaseUseCase<bool, int> {
  final TodoRepository _repository;

  DeleteTodoUseCase(this._repository);

  @override
  Future<bool> getData(int request) {
    return _repository.deleteTodo(request);
  }
}
