import 'package:pln_test/ui/pages/home/controller.dart';
import 'package:get_it/get_it.dart';
import 'package:pln_test/ui/pages/todo/controller.dart';

/// Declare dependency injection for Controller
class ControllerModule {
  static void init(GetIt injector) {
    injector.registerFactory<HomeController>(() {
      return HomeController();
    });
    injector.registerFactory<TodoController>(() {
      return TodoController();
    });
  }
}
