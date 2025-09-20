import 'package:flutter_application_1/api_repo/user_repositry.dart';
import 'package:flutter_application_1/sates/user_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState>{
  final UserRepositry respositry;
  UserCubit(this.respositry):super(UserInitial());
  Future<void> getUsers() async {
    try{
      emit(UserLoading());
      final users= await respositry.fetchUsers();
      emit(UserLoaded(users));
    }catch(e){
      emit(UseError(e.toString()));
    }
  }
}
