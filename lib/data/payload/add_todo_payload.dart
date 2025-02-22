class AddTodoPayload {
  final int userId;
  final String title;
  final bool completed;

  AddTodoPayload(
      {required this.userId, required this.title, required this.completed});

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'title': title, 'completed': completed};
  }
}
