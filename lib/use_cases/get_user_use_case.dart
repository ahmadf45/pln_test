import 'package:pln_test/data/repositories/user_repository.dart';
import 'package:pln_test/domain/entities/user.dart';
import 'package:pln_test/infrastructures/base_use_case.dart';

class GetUserUseCase extends BaseUseCase<User, int> {
  final UserRepository _repository;

  GetUserUseCase(this._repository);
  @override
  Future<User> getData(int request) {
    return _repository.getUser(request);
  }
}
