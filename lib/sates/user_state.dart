import 'package:flutter_application_1/models/user_model.dart';

class UserState {

}
class UserInitial extends UserState{

}
class UserLoading extends UserState{

}
class UserLoaded extends UserState{
  final List<UserModel> users;
  UserLoaded(this.users);

}
class UseError extends UserState{

UseError(String string);
get message=>null;
}