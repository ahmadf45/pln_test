class EditTodoPayload {
  final int id, userId;
  final String title;
  final bool completed;

  EditTodoPayload(
      {required this.id,
      required this.userId,
      required this.title,
      required this.completed});

  Map<String, dynamic> toJson() {
    return {'id': id, 'userId': userId, 'title': title, 'completed': completed};
  }
}
