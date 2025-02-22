import 'package:pln_test/data/repositories/todo_repository.dart';
import 'package:pln_test/data/repositories/user_repository.dart';
import 'package:get_it/get_it.dart';

/// Declare dependency injection for Repository
class RepositoryModule {
  static void init(GetIt injector) {
    injector.registerFactory<UserRepository>(() {
      return UserRepository(injector.get(), injector.get(), injector.get());
    });
    injector.registerFactory<TodoRepository>(() {
      return TodoRepository(injector.get(), injector.get(), injector.get());
    });
  }
}
