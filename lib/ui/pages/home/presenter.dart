import 'package:pln_test/data/payload/edit_todo_payload.dart';
import 'package:pln_test/domain/entities/todo.dart';
import 'package:pln_test/domain/entities/user.dart';
import 'package:pln_test/infrastructures/base_presenter.dart';
import 'package:pln_test/use_cases/delete_todo_use_case.dart';
import 'package:pln_test/use_cases/edit_todo_use_case.dart';
import 'package:pln_test/use_cases/get_todos_use_case.dart';
import 'package:pln_test/use_cases/get_user_use_case.dart';

class HomePresenter extends BasePresenter<User, int> {
  HomePresenter(GetUserUseCase super._useCase, this._getTodosUseCase,
      this._deleteTodoUseCase, this._editTodoUseCase);

  final GetTodosUseCase _getTodosUseCase;
  final DeleteTodoUseCase _deleteTodoUseCase;
  final EditTodoUseCase _editTodoUseCase;

  late Function getTodosOnComplete;
  late Function getTodosOnError;
  late Function(List<Todo>) getTodosOnSuccess;

  late Function deleteTodoOnComplete;
  late Function deleteTodoOnError;
  late Function(bool) deleteTodoOnSuccess;

  late Function editTodoOnComplete;
  late Function editTodoOnError;
  late Function(bool) editTodoOnSuccess;

  void onGetUser({required int id}) async {
    execute(request: id);
  }

  void onGetTodos({required Map<String, String> request}) async {
    try {
      var data = await _getTodosUseCase.execute(request: request);
      getTodosOnSuccess(data);
    } catch (e) {
      getTodosOnError(e);
    } finally {
      getTodosOnComplete();
    }
  }

  void onDeleteTodo(int param) async {
    try {
      var data = await _deleteTodoUseCase.execute(request: param);
      deleteTodoOnSuccess(data);
    } catch (e) {
      deleteTodoOnError(e);
    } finally {
      deleteTodoOnComplete();
    }
  }

  void onEditTodo(EditTodoPayload payload) async {
    try {
      var data = await _editTodoUseCase.execute(request: payload);
      editTodoOnSuccess(data);
    } catch (e) {
      editTodoOnError(e);
    } finally {
      editTodoOnComplete();
    }
  }
}
