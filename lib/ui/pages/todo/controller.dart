import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:pln_test/data/payload/add_todo_payload.dart';
import 'package:pln_test/infrastructures/app_component.dart';
import 'package:pln_test/infrastructures/base_controller.dart';
import 'package:pln_test/infrastructures/misc/utils.dart';
import 'package:pln_test/ui/pages/todo/presenter.dart';

class TodoController extends BaseController {
  final TodoPresenter _presenter = AppComponent.getInjector().get();
  String? _selectedType;
  String? get selectedType => _selectedType;

  final TextEditingController _titleController = TextEditingController();
  TextEditingController get titleController => _titleController;

  String? _timePicked;
  String? get timePicked => _timePicked;

  @override
  void onInitListeners() {
    _initAddTodo();
    super.onInitListeners();
  }

  void _initAddTodo() {
    _presenter.onComplete = () {
      context.loaderOverlay.hide();
    };
    _presenter.onSuccess = (data) async {
      Utils().showSuccess(
          message: "Success Add Task",
          barrierDismissible: false,
          onConfirm: () {
            Navigator.pop(context);
          });
    };
    _presenter.onError = (e) {};
  }

  void setType(String? value) {
    _selectedType = value;
    refreshUI();
  }

  void setTime() async {
    final time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time != null) {
      if (!context.mounted) return;
      _timePicked = time.format(context);
      refreshUI();
    }
  }

  void addTodo() {
    if (_titleController.text.isEmpty ||
        _selectedType == null ||
        _timePicked == null) {
      Utils().showError('Oops! Data incompleted');
      return;
    }
    context.loaderOverlay.show();
    _presenter.onAddTodo(
      payload: AddTodoPayload(
          userId: 3, title: _titleController.text, completed: false),
    );
  }
}
