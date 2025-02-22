import 'package:pln_test/domain/entities/user.dart';

class UserMapper {
  List<User> getUsers(dynamic json) {
    List<User> users = [];
    for (var item in json['data']) {
      users.add(getUser(item));
    }
    return users;
  }

  User getUser(Map<String, dynamic> json) {
    return User(
      id: json["id"] ?? 1,
      email: json["email"] ?? '',
      name: json["name"] ?? '',
      username: json["username"] ?? '',
      address: json["address"]?['city'] ?? '',
      phone: json["phone"] ?? '',
      website: json["website"] ?? '',
      company: json["company"]?['name'] ?? '',
    );
  }
}
