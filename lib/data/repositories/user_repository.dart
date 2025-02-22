import 'package:pln_test/data/mapper/user_mapper.dart';
import 'package:pln_test/data/payload/add_user_payload.dart';
import 'package:pln_test/domain/entities/user.dart';
import 'package:pln_test/infrastructures/api_service_interface.dart';
import 'package:pln_test/infrastructures/misc/endpoint.dart';

class UserRepository {
  UserRepository(
      ApiServiceInterface service, Endpoints endpoints, UserMapper mapper) {
    _mapper = mapper;
    _service = service;
    _endpoints = endpoints;
  }

  late ApiServiceInterface _service;
  late Endpoints _endpoints;
  late UserMapper _mapper;

  Future<List<User>> getUsers(Map<String, String> params) async {
    dynamic resp;
    try {
      resp = await _service.invokeHttp(_endpoints.user(), RequestType.get,
          params: params);
    } catch (error) {
      rethrow;
    }
    return _mapper.getUsers(resp);
  }

  Future<User> getUser(int params) async {
    dynamic resp;
    try {
      resp = await _service.invokeHttp(
        "${_endpoints.user()}/$params",
        RequestType.get,
      );
    } catch (error) {
      rethrow;
    }
    return _mapper.getUser(resp['data'] ?? {});
  }

  Future<bool> addUser(AddUserPayload payload) async {
    dynamic resp;
    try {
      resp = await _service.invokeHttp(_endpoints.user(), RequestType.post,
          body: payload);
    } catch (error) {
      rethrow;
    }
    return resp != null;
  }
}
