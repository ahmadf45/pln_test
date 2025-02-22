import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:pln_test/data/payload/edit_todo_payload.dart';
import 'package:pln_test/domain/entities/todo.dart';
import 'package:pln_test/domain/entities/user.dart';
import 'package:pln_test/infrastructures/app_component.dart';
import 'package:pln_test/infrastructures/base_controller.dart';
import 'package:pln_test/infrastructures/misc/utils.dart';
import 'package:pln_test/ui/pages/home/presenter.dart';

class HomeController extends BaseController {
  final HomePresenter _presenter = AppComponent.getInjector().get();

  User? _user;
  User? get user => _user;

  bool _loadingTodos = true;
  bool get loadingTodos => _loadingTodos;

  List<Todo> _todoUncheck = [];
  List<Todo> get todoUncheck => _todoUncheck;

  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  List<Todo> _todosView = [];
  List<Todo> get todosView => _todosView;

  String _filter = 'all';
  String get filter => _filter;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  @override
  void onInitState() {
    super.onInitState();
    showLoading();
    _getUser();
    _getTodos();
  }

  @override
  void onInitListeners() {
    _initGetUser();
    _initGetTodos();
    _initDeleteTodo();
    _initEditTodo();
    super.onInitListeners();
  }

  _getUser() {
    _presenter.onGetUser(id: 3);
  }

  _getTodos() {
    _presenter.onGetTodos(request: {});
  }

  void deleteTodo(int param) {
    context.loaderOverlay.show();
    _presenter.onDeleteTodo(param);
  }

  void checkTodo(Todo data) {
    context.loaderOverlay.show();
    _presenter.onEditTodo(EditTodoPayload(
        id: data.id,
        userId: data.userId,
        title: data.title,
        completed: !data.completed));
  }

  void _initGetUser() {
    _presenter.onComplete = () {
      dismissLoading();
    };
    _presenter.onSuccess = (data) async {
      _user = data;
      refreshUI();
    };
    _presenter.onError = (e) {};
  }

  void _initGetTodos() {
    _presenter.getTodosOnComplete = () {};
    _presenter.getTodosOnSuccess = (data) {
      _todos = data;
      _todoUncheck = _todos.where((todo) => !todo.completed).toList();
      setFilter(_filter);
    };
    _presenter.getTodosOnError = (e) {
      _loadingTodos = false;
      refreshUI();
    };
  }

  void _initDeleteTodo() {
    _presenter.deleteTodoOnComplete = () {
      context.loaderOverlay.hide();
    };
    _presenter.deleteTodoOnSuccess = (data) {
      Utils().showSuccess(
          message: "Success Delete Todo!",
          barrierDismissible: false,
          onConfirm: () {
            _loadingTodos = true;
            refreshUI();
            _getTodos();
          });
    };
    _presenter.deleteTodoOnError = (e) {};
  }

  void _initEditTodo() {
    _presenter.editTodoOnComplete = () {
      context.loaderOverlay.hide();
    };
    _presenter.editTodoOnSuccess = (data) {
      Utils().showSuccess(
          message: "Success Check Todo!",
          barrierDismissible: false,
          onConfirm: () {
            _loadingTodos = true;
            refreshUI();
            _getTodos();
          });
    };
    _presenter.editTodoOnError = (e) {};
  }

  void setFilter(String value) {
    _filter = value;
    if (_filter == 'all') {
      _todosView = _todos;
      if (_todosView.isNotEmpty) {
        _loadingTodos = false;
        refreshUI();
        Future.delayed(Duration.zero, () {
          _scrollController.animateTo(
            _scrollController.position.minScrollExtent,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 500),
          );
        });
      }
    } else {
      _todosView = _todos.where((todo) => todo.type == _filter).toList();
      if (_todosView.isNotEmpty) {
        _loadingTodos = false;
        refreshUI();
        Future.delayed(Duration.zero, () {
          _scrollController.animateTo(
            _scrollController.position.minScrollExtent,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 500),
          );
        });
      }
    }
  }
}
