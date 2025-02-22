import 'package:pln_test/data/mapper/todo_mapper.dart';
import 'package:pln_test/data/payload/add_todo_payload.dart';
import 'package:pln_test/data/payload/edit_todo_payload.dart';
import 'package:pln_test/domain/entities/todo.dart';
import 'package:pln_test/infrastructures/api_service_interface.dart';
import 'package:pln_test/infrastructures/misc/endpoint.dart';

class TodoRepository {
  TodoRepository(
      ApiServiceInterface service, Endpoints endpoints, TodoMapper mapper) {
    _mapper = mapper;
    _service = service;
    _endpoints = endpoints;
  }

  late ApiServiceInterface _service;
  late Endpoints _endpoints;
  late TodoMapper _mapper;

  Future<List<Todo>> getTodos(Map<String, String> params) async {
    dynamic resp;
    try {
      resp = await _service.invokeHttp(_endpoints.todo(), RequestType.get,
          params: params);
    } catch (error) {
      rethrow;
    }
    return _mapper.getTodos(resp);
  }

  Future<bool> addTodo(AddTodoPayload payload) async {
    dynamic resp;
    try {
      resp = await _service.invokeHttp(_endpoints.todo(), RequestType.post,
          body: payload);
    } catch (error) {
      rethrow;
    }
    return resp != null;
  }

  Future<bool> editTodo(EditTodoPayload payload) async {
    dynamic resp;
    try {
      resp = await _service.invokeHttp(_endpoints.todo(), RequestType.put,
          body: payload);
    } catch (error) {
      rethrow;
    }
    return resp != null;
  }

  Future<bool> deleteTodo(int param) async {
    dynamic resp;
    try {
      resp = await _service.invokeHttp(
        "${_endpoints.todo()}/$param",
        RequestType.delete,
      );
    } catch (error) {
      rethrow;
    }
    return resp != null;
  }
}
