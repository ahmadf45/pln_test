import 'package:pln_test/data/payload/add_user_payload.dart';
import 'package:pln_test/data/repositories/user_repository.dart';
import 'package:pln_test/infrastructures/base_use_case.dart';

class AddUserUseCase extends BaseUseCase<bool, AddUserPayload> {
  final UserRepository _repository;

  AddUserUseCase(this._repository);

  @override
  Future<bool> getData(AddUserPayload request) {
    return _repository.addUser(request);
  }
}
