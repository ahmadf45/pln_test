import 'package:pln_test/ui/pages/home/presenter.dart';
import 'package:get_it/get_it.dart';
import 'package:pln_test/ui/pages/todo/presenter.dart';

/// Declare dependency injection for Presenter
class PresenterModule {
  static void init(GetIt injector) {
    injector.registerFactory<HomePresenter>(() {
      return HomePresenter(
          injector.get(), injector.get(), injector.get(), injector.get());
    });
    injector.registerFactory<TodoPresenter>(() {
      return TodoPresenter(injector.get(), injector.get());
    });
  }
}
