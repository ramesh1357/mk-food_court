import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_repo/post_repository.dart';
import 'package:flutter_application_1/api_repo/user_repositry.dart';
import 'package:flutter_application_1/cubit/post_cubit.dart';
import 'package:flutter_application_1/cubit/user_cubit.dart';
import 'package:flutter_application_1/wigets/home_screen.dart';
import 'package:flutter_application_1/wigets/homepage.dart';
import 'package:flutter_application_1/wigets/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit(UserRepositry())..getUsers(),),
        BlocProvider(create: (_) => PostCubit(PostRepository())..fetchUsers(),),

      ],
      // ✅ Correct way
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(), // or WelcomeScreen if you want
      ),
    );
  }

}

