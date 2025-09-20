import 'dart:convert';

class PostModel {
  int postId;
  int id;
  String name;
  String email;
  String body;
  PostModel({
    required this.postId,
    required this.email,
    required this.body,
    required this.id,
    required this.name,
  });
  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      postId: json["postid"]?? 0,

      email: json["email"] ?? "",
      body: json["body"]?? "",
      id: json["id"]?? 0,
      name: json["name"]?? "",
    );
  }
}
