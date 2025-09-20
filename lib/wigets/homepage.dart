import 'package:flutter/material.dart';
import 'package:flutter_application_1/sates/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:flutter_application_1/cubit/user_cubit.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit with API")),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is UserLoaded) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final user = state.users[index]; // UserModel
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Text(user.id.toString()), // show ID
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                user.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text("UserId: ${user.userId}"),
                        Text("Id: ${user.id}"),
                        Text("Body: ${user.body}"),
                        Text("Body: ${user.title}"),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return const Center(child: Text("Something went wrong!"));
        },
      ),
    );
  }
}