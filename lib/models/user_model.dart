class UserModel {
  int id;
  int userId;
  String title;
  String body;
  UserModel({
    required this.id,
    required this.body,
    required this.title,
    required this.userId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      body: json["body"],
      title: json["title"],
      userId: json["userId"],
    );
  }
}
