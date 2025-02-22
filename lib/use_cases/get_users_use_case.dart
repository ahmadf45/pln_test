import 'package:pln_test/data/repositories/user_repository.dart';
import 'package:pln_test/domain/entities/user.dart';
import 'package:pln_test/infrastructures/base_use_case.dart';

class GetUsersUseCase extends BaseUseCase<List<User>, Map<String, String>> {
  final UserRepository _repository;

  GetUsersUseCase(this._repository);
  @override
  Future<List<User>> getData(Map<String, String> request) {
    return _repository.getUsers(request);
  }
}
