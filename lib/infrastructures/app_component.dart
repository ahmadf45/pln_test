import 'package:pln_test/infrastructures/di/controller_module.dart';
import 'package:pln_test/infrastructures/di/mapper_module.dart';
import 'package:pln_test/infrastructures/di/presenter_module.dart';
import 'package:pln_test/infrastructures/di/repository_module.dart';
import 'package:pln_test/infrastructures/di/root_module.dart';
import 'package:pln_test/infrastructures/di/use_case_module.dart';
import 'package:get_it/get_it.dart';

class AppComponent {
  static Future<void> init() async {
    GetIt injector = getInjector();
    await RootModule.init(injector);
    MapperModule.init(injector);
    RepositoryModule.init(injector);
    UseCaseModule.init(injector);
    PresenterModule.init(injector);
    ControllerModule.init(injector);
  }

  static GetIt getInjector() {
    return GetIt.I;
  }

  static Future<void> refresh() async {
    getInjector().reset();
    getInjector().resetLazySingleton();
    init();
  }
}
