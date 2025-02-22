/// Declare all endpoint
class Endpoints {
  String baseUrl;

  Endpoints(this.baseUrl);

  String user() => '/users';
  String todo() => '/todos';
}
