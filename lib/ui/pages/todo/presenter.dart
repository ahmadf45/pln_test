import 'package:pln_test/data/payload/add_todo_payload.dart';
import 'package:pln_test/data/payload/edit_todo_payload.dart';
import 'package:pln_test/infrastructures/base_presenter.dart';
import 'package:pln_test/use_cases/add_todo_use_case.dart';
import 'package:pln_test/use_cases/edit_todo_use_case.dart';

class TodoPresenter extends BasePresenter<bool, AddTodoPayload> {
  TodoPresenter(AddTodoUseCase super._useCase, this._editTodoUseCase);

  final EditTodoUseCase _editTodoUseCase;

  late Function editTodoOnComplete;
  late Function editTodoOnError;
  late Function(bool) editTodoOnSuccess;

  void onAddTodo({required AddTodoPayload payload}) async {
    execute(request: payload);
  }

  void onEditTodo({required EditTodoPayload payload}) async {
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
