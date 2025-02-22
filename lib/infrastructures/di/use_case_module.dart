import 'package:pln_test/use_cases/add_todo_use_case.dart';
import 'package:pln_test/use_cases/add_user_use_case.dart';
import 'package:pln_test/use_cases/delete_todo_use_case.dart';
import 'package:pln_test/use_cases/edit_todo_use_case.dart';
import 'package:pln_test/use_cases/get_todos_use_case.dart';
import 'package:pln_test/use_cases/get_user_use_case.dart';
import 'package:pln_test/use_cases/get_users_use_case.dart';
import 'package:get_it/get_it.dart';

/// Declare dependency injection for UseCase
class UseCaseModule {
  static void init(GetIt injector) {
    injector.registerFactory<GetUserUseCase>(() {
      return GetUserUseCase(injector.get());
    });
    injector.registerFactory<GetUsersUseCase>(() {
      return GetUsersUseCase(injector.get());
    });
    injector.registerFactory<GetTodosUseCase>(() {
      return GetTodosUseCase(injector.get());
    });
    injector.registerFactory<AddUserUseCase>(() {
      return AddUserUseCase(injector.get());
    });
    injector.registerFactory<AddTodoUseCase>(() {
      return AddTodoUseCase(injector.get());
    });
    injector.registerFactory<EditTodoUseCase>(() {
      return EditTodoUseCase(injector.get());
    });
    injector.registerFactory<DeleteTodoUseCase>(() {
      return DeleteTodoUseCase(injector.get());
    });
  }
}
