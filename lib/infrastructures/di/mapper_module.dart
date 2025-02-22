import 'package:pln_test/data/mapper/todo_mapper.dart';
import 'package:pln_test/data/mapper/user_mapper.dart';
import 'package:get_it/get_it.dart';

/// Declare dependency injection for Mapper
class MapperModule {
  static void init(GetIt injector) {
    injector.registerFactory<UserMapper>(() {
      return UserMapper();
    });
    injector.registerFactory<TodoMapper>(() {
      return TodoMapper();
    });
  }
}
