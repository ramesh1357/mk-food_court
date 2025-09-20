import 'package:flutter_application_1/api_repo/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../sates/post_state.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepository repository;

  PostCubit(this.repository) : super(UserInitial());

  Future<void> fetchUsers() async {
    try {
      emit(UserLoading());
      final users = await repository.fetchUsers();
      emit(UserLoaded(users));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
