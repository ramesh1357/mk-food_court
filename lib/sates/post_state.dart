import 'package:flutter_application_1/models/post_model.dart';

 abstract class PostState {}
class UserInitial extends PostState{}
class UserLoading extends PostState{}
class UserLoaded extends PostState{
  final List<PostModel> users;
  UserLoaded(this.users);

}
class UserError extends PostState{
  UserError(String string);
  get message=> null;
}