class AddUserPayload {
  final String name;
  final String job;

  AddUserPayload({required this.name, required this.job});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'job': job,
    };
  }
}
