import 'package:pln_test/data/repositories/todo_repository.dart';
import 'package:pln_test/domain/entities/todo.dart';
import 'package:pln_test/infrastructures/base_use_case.dart';

class GetTodosUseCase extends BaseUseCase<List<Todo>, Map<String, String>> {
  final TodoRepository _repository;

  GetTodosUseCase(this._repository);
  @override
  Future<List<Todo>> getData(Map<String, String> request) {
    return _repository.getTodos(request);
  }
}
